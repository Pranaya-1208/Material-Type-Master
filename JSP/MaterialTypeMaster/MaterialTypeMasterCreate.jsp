<%-- 
    Document   : MaterialTypeMasterCreate
    Created on : Jun 16, 2020, 10:21:06 AM
    Author     : Vishwa Panchal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/Common/Header.jsp"%>
<%@include file="/WEB-INF/jsp/Common/NavbarCmss.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Material Type</title>
</head>
<body>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Create Material</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Create Material</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="nav-tabs-custom">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <span style="color: red;font-size: 14px;">* Indicates Mandatory Field.</span>
                            <c:if test="${!empty successMessage}">
                                <div class="fadeOutEffect alert alert-info" role="alert">${successMessage}</div>
                            </c:if>
                            <c:if test="${!empty failureMessage}">
                                <div class="fadeOutEffect alert alert-danger" role="alert">${failureMessage}</div>
                            </c:if>
                            <form:form action="materialTypeMaster.htm?act=createSubmit" method="post" commandName="materialTypeMaster"
                                       class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Material type :<span style="color: red;font-size: 12px;">*</span></label>
                                    <div class="col-sm-3">
                                     
                                        
                                        <input class="form-control" name="materialType" id="materialType"  required="required"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6 col-sm-offset-5">
                                        <input type="submit" class="btn btn-primary" style="width: 100px;" title="" value="SUBMIT">
                                    </div>
                                </div>
                            </form:form>
                        </div><!-- /.tab-pane -->
                    </div><!-- /.tab-content -->
                </div><!-- nav-tabs-custom -->
            </div><!-- /.col -->
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
<%@include file="/WEB-INF/jsp/Common/Footer.jsp"%>
</body>
</html>
