/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.dao.MaterialTypeMaster;

import com.bul.zydex.dao.GenericsDAOImpl;
import com.bul.zydex.model.MaterialTypeMaster;
import java.util.List;
import org.hibernate.Query;


public class MaterialTypeMasterDaoImpl<T> extends GenericsDAOImpl<T> implements MaterialTypeMasterDao<T> {

     @Override
    protected Class getDomainClass() {
        return MaterialTypeMaster.class;
    }
    
    
}
