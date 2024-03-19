import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/constants.dart';
import '../../../models/RecentFile.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white70),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,

              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text(
                    "File Name",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Size",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                fileInfo.title!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
      DataCell(Text(
        fileInfo.date!,
        style: TextStyle(color: Colors.white70),
      )),
      DataCell(Text(
        fileInfo.size!,
        style: TextStyle(color: Colors.white70),
      )),
    ],
  );
}
