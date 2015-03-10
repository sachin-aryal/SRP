package org.grails.plugins.excelimport

import org.grails.plugins.excelimport.*
import sample.*

/**
 * Created by asim on 6/13/14.
 */
class StudentExcelImporter extends AbstractExcelImporter{


    public StudentExcelImporter(fileName) {
        super(fileName)
    }

    List<Map> getStudents(sheetName){

        Map CONFIG_STUDENT_COLUMN_MAP = [
                sheet: sheetName, startRow: 1,
                columnMap: [ 'A': 'Roll No', 'B':'First Name', 'C':'Last Name', 'D':'Email', ]
        ]

        List<Map> studentList = ExcelImportService.getService().columns(workbook, CONFIG_STUDENT_COLUMN_MAP)

        return studentList
    }
}
