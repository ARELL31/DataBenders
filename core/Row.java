package core;

import java.util.HashMap;
import java.util.Map;

public class Row {
    private Map<String, Object> columnValues;

    public Row() {
        this.columnValues = new HashMap<>();
    }

    public void setColumnValue(String columnName, Object value) {
        columnValues.put(columnName, value);
    }

    public Object getColumnValue(String columnName) {
        return columnValues.get(columnName);
    }

    public Map<String, Object> getColumnValues() {
        return columnValues;
    }

    @Override
    public String toString() {
        return columnValues.toString();
    }
}
