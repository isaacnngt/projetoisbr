/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilitarios;

/**
 *
 * @author Isaac Nunes
 */
public class Singleton {
    
    private static String sala;
    private static String usuario;

    /**
     * @return the sala
     */
    public static String getSala() {
        return sala;
    }

    /**
     * @param aSala the sala to set
     */
    public static void setSala(String aSala) {
        sala = aSala;
    }

    /**
     * @return the usuario
     */
    public static String getUsuario() {
        return usuario;
    }

    /**
     * @param aUsuario the usuario to set
     */
    public static void setUsuario(String aUsuario) {
        usuario = aUsuario;
    }
    
}
