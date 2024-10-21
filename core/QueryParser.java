package core;

import java.util.ArrayList;
import java.util.List;

public class QueryParser {
    private Table table;

    public QueryParser(Table table) {
        this.table = table;
    }

    public void executeQuery(String query) {
        String[] parts = query.trim().split("\\s+");

        switch (parts[0].toUpperCase()) {
            case "INSERT":
                handleInsert(parts);
                break;
            case "UPDATE":
                handleUpdate(parts);
                break;
            case "DELETE":
                handleDelete(parts);
                break;
            default:
                throw new IllegalArgumentException("Invalid query format");
        }
    }

    private void handleInsert(String[] parts) {
        if (parts.length < 4 || !parts[1].equalsIgnoreCase("INTO")) {
            throw new IllegalArgumentException("Invalid INSERT statement");
        }

        Row newRow = new Row();

            String[] columns = parts[2].substring(parts[2].indexOf("(") + 1, parts[2].indexOf(")")).split(",");
            String[] values = parts[4].substring(parts[4].indexOf("(") + 1, parts[4].indexOf(")")).split(",");

        for (int i = 0; i < columns.length; i++) {
            newRow.setColumnValue(columns[i].trim(), values[i].trim());
        }

        table.insertRow(newRow);
    }

    private void handleUpdate(String[] parts) {
        
        throw new UnsupportedOperationException("UPDATE not implemented yet");
    }

    private void handleDelete(String[] parts) {
        // Implementar la lógica para DELETE
        throw new UnsupportedOperationException("DELETE not implemented yet");
    }
}
