/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dryclean;

import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;
/**
 *
 * @author Dynastymasra
 */
public class TabelUserdetail extends AbstractTableModel {
    private List<UserDetail> list = new ArrayList<UserDetail>();
    
    public int getRowCount() {
        return list.size();
    }
    public int getColumnCount() {
        return 8;
    }
    public Object getValueAt(int rowIndex, int columnIndex) {
        switch(columnIndex) {
            case 0 : return list.get(rowIndex).getNota();
            case 1 : return list.get(rowIndex).getNama();
            case 2 : return list.get(rowIndex).getPewangi();
            case 3 : return list.get(rowIndex).getBerat();
            case 4 : return list.get(rowIndex).getMasuk();
            case 5 : return list.get(rowIndex).getAmbil();
            case 6 : return list.get(rowIndex).getHarga();
            case 7 : return list.get(rowIndex).getKet();
            default: return null;
        }
    }
    
   @Override
   public String getColumnName(int column) {
       switch(column) {
            case 0 : return "Nota";
            case 1 : return "Nama";
            case 2 : return "Pewangi";
            case 3 : return "Berat";
            case 4 : return "Masuk";
            case 5 : return "Ambil";
            case 6 : return "Harga";
            case 7 : return "Ket";
            default : return null;
       }
   }
   
   public void add(UserDetail userDetail) {
       list.add(userDetail);
       fireTableRowsInserted(getRowCount(), getColumnCount());
   }
   public void delete(int i, int row) {
       list.remove(i);
       fireTableRowsDeleted(i, row);
   }
   public UserDetail get(int row) {
       return (UserDetail) list.get(row);
   }
}
