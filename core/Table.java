package core;
import java.util.*;

public class Table {
    private String tableName;
    private List<Column> columns;
    private List<Row> rows;

    public Table(String tableName) {
        this.tableName = tableName;
        this.columns = new ArrayList<>();
        this.rows = new ArrayList<>();
    }

    public void addColumn(Column column) {
        columns.add(column);
    }

    public void insertRow(Row row) {
        rows.add(row);
    }

    public List<Row> getRows() {
        return rows;
    }

    public void deleteRow(int index) {
        if (index >= 0 && index < rows.size()) {
            rows.remove(index);
        } else {
            throw new IllegalArgumentException("Row index out of bounds");
        }
    }

    public void updateRow(int index, Row newRow) {
        if (index >= 0 && index < rows.size()) {
            rows.set(index, newRow);
        } else {
            throw new IllegalArgumentException("Row index out of bounds");
        }
    }
}
