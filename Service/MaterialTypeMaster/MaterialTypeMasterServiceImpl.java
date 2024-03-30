/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.service.MaterialTypeMaster;

import com.bul.zydex.service.Apprentices.*;
import com.bul.zydex.dao.Apprentices.ApprenticesDao;
import com.bul.zydex.dao.MaterialTypeMaster.MaterialTypeMasterDao;
import com.bul.zydex.model.ApprenticesMaster;
import com.bul.zydex.service.GenericsServiceImpl;
import java.util.List;

/**
 *
 * @author Aman Bahukhandi
 */
public class MaterialTypeMasterServiceImpl<T> extends GenericsServiceImpl<T> implements MaterialTypeMasterService<T> {

    private MaterialTypeMasterDao<T> materialTypeMasterDao;

    public MaterialTypeMasterDao<T> getMaterialTypeMasterDao() {
        return materialTypeMasterDao;
    }

    public void setMaterialTypeMasterDao(MaterialTypeMasterDao<T> materialTypeMasterDao) {
        this.materialTypeMasterDao = materialTypeMasterDao;
        setGenericsDAO(materialTypeMasterDao);
    }
    
    

    
}
