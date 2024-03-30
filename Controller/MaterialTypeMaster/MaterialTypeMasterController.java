/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.controller.MaterialTypeMaster;

import com.bul.zydex.controller.CustomAbstract;
import com.bul.zydex.model.MaterialTypeMaster;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Aman Bahukhandi
 */
public class MaterialTypeMasterController extends CustomAbstract {

    public ModelAndView showList(HttpServletRequest request, HttpServletResponse response, MaterialTypeMaster materialTypeMaster) throws Exception {
        ModelAndView mv = new ModelAndView();

        List list = materialTypeMasterService.read();
        request.setAttribute("list", list);
        //request.getSession().getAttribute("materialTypeMaster ");
        mv.getModelMap().put("materialTypeMaster", materialTypeMaster);
        return new ModelAndView("MaterialTypeMaster/MaterialTypeMasterCreate");

    }

    public ModelAndView createSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();

        MaterialTypeMaster materialTypeMaster = new MaterialTypeMaster();

        String materialType = request.getParameter("materialType");

        materialTypeMaster.setMaterialType(materialType);

        materialTypeMasterService.create(materialTypeMaster);

        request.setAttribute("successMessage",
                "Information: Record is Created successfully");

        mv.getModelMap().put("materialTypeMaster", materialTypeMaster);

        mv.setViewName("MaterialTypeMaster/MaterialTypeMasterCeate");
        return mv;
    }

    public ModelAndView showMaterial(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();

        List materialTypeMasterList = materialTypeMasterService.read();

        mv.getModelMap().put("materialTypeMasterList", materialTypeMasterList);
        request.setAttribute("materialTypeMasterList", materialTypeMasterList);
        mv.setViewName("MaterialTypeMaster/MaterialTypeMasterList"); //this is JSP page path
        return mv;
    }

    public ModelAndView deleteSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();
        String ptId[] = request.getParameterValues("checkId");
        for (String z : ptId) {
            try {
                materialTypeMasterService.delete(Integer.parseInt(z));
                request.setAttribute("successMessage",
                        "Info : records are deleted successfully.");
            } catch (Exception e) {
            }
        }
        mv = showMaterial(request, response);
        return mv;

    }

    public ModelAndView viewClick(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();

        String id = request.getParameter("id");

        MaterialTypeMaster materialTypeMaster = materialTypeMasterService.readById(Integer.parseInt(id));

        mv.getModelMap().put("materialTypeMaster", materialTypeMaster);
        request.setAttribute("materialTypeMaster", materialTypeMaster);

        mv.getModelMap().put("id", id);
        request.setAttribute("id", id);

        mv.setViewName("MaterialTypeMaster/MaterialTypeMasterEdit"); //this is JSP page path
        return mv;
    }

    public ModelAndView editSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();

        String id = request.getParameter("id");

        MaterialTypeMaster materialTypeMaster = materialTypeMasterService.readById(Integer.parseInt(id));

        String materialType = request.getParameter("materialType");

        materialTypeMaster.setMaterialType(materialType);

        materialTypeMasterService.update(materialTypeMaster);

        request.setAttribute("successMessage",
                "Information: Record is successfully Updated");

        mv.getModelMap().put("materialTypeMaster", materialTypeMaster);

        mv = showMaterial(request, response);
        return mv;
    }

}
