package model;


import java.sql.ResultSet;

import java.sql.SQLException;



/**Estrae risultati da un Bean generico
 *<Object> classe personalizzata da convertire
 */

public interface ResultSetExtractor<C> {
    /** Estrae dati e informazioni da ResultSet
     * @param resultSet è il ResultSet
     * @return ritorna il bean
     * @throws SQLException in caso di errori ed eccezioni
     */
    Object extract(ResultSet resultSet) throws SQLException;
}

