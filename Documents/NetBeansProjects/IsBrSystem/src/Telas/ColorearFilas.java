package Telas;

import java.awt.*;
import javax.swing.*;
import javax.swing.table.*;

public class ColorearFilas extends DefaultTableCellRenderer {

    private final int columna_patron;

    public ColorearFilas(int Colpatron) {
        this.columna_patron = Colpatron;
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean Selected, boolean hasFocus, int row, int col) {
        Font font = new Font("Courier", Font.BOLD, 16);
        switch (table.getValueAt(row, columna_patron).toString()) {

            case "Vermelho - Emergência":
                setForeground(Color.RED);
                setFont(font);
                break;
            case "Laranja - Muito Urgente":
                setForeground(Color.ORANGE);
                setFont(font);
                break;
            case "Amarelo - Urgente":
                setForeground(Color.YELLOW);
                setFont(font);
                break;
            case "Verde - Pouco Urgente":
                setForeground(Color.green);
                setFont(font);
                break;
                
            case "Azul - Não Urgente":
                setForeground(Color.BLUE);
                setFont(font);
                break;
          
            default:
                break;
        }
        super.getTableCellRendererComponent(table, value, Selected, hasFocus, row, col);
        return this;
    }

}
