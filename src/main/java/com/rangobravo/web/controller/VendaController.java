/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rangobravo.web.controller;

import com.rangobravo.web.dao.VendaDAO;
import com.rangobravo.web.model.Venda;
import java.util.List;

public class VendaController {

    public static void salvar(int cliente, String formaPagamento, float valorTotal, String dataVenda) {
        Venda v = new Venda(cliente, formaPagamento, valorTotal, dataVenda);
        VendaDAO venda = new VendaDAO();
        venda.salvar(v);
    }

    public static List<Venda> consultar(String cliente, String dataIni, String dataFim) {
        VendaDAO Venda = new VendaDAO();
        return Venda.consultar(cliente, dataIni, dataFim);
    }
    public static void excluir (int id){
        VendaDAO venda = new VendaDAO();
        venda.deletar(id);
    }
}
