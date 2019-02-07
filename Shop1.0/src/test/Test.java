package test;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

public class Test {
	public Map<Integer, List<String>> read(String st){
		Map<Integer, List<String>> map = new TreeMap<Integer, List<String>>();
		try {
			Workbook book = Workbook.getWorkbook(new File(st));
			System.out.println(st);
			// 获得第一个工作表对象
			Sheet sheet = book.getSheet(0);
			// 获得第一列第一行的单元格
			int i = sheet.getRows();
			int j = sheet.getColumns();
			String rs = null;
			/*
			 * Cell[] cell1=sheet.getRow(0);
			 * System.out.println(cell1[0].getContents
			 * ()+cell1[1].getContents());
			 */
			// List<List<String>> list= new ArrayList<List<String>>();

			for (int a = 1; a < i; a++) {
				List<String> list1 = new ArrayList<String>();
				for (int b = 0; b < j; b++) {
					Cell cell = sheet.getCell(b, a);
					rs = cell.getContents();
				
					list1.add(rs);
				}

				map.put(a, list1);
			}
			// System.out.println(map);
			book.close();
		} catch (BiffException e) {
			e.printStackTrace();
		} catch (IndexOutOfBoundsException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return map;
		
	}
}
