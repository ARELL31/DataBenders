package core;

public class Column {
    private String columnName;
    private String dataType;
    private boolean isNullable;

    public Column(String columnName, String dataType, boolean isNullable) {
        this.columnName = columnName;
        this.dataType = dataType;
        this.isNullable = isNullable;
    }

    public String getColumnName() {
        return columnName;
    }

    public String getDataType() {
        return dataType;
    }

    public boolean isNullable() {
        return isNullable;
    }
}
