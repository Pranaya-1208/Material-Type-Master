<%-- 
    Document   : MaterialTypeMasterList
    Created on : Jun 16, 2020, 10:21:06 AM
    Author     : Vishwa Panchal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/WEB-INF/jsp/Common/Header.jsp"%>
    <%@include file="/WEB-INF/jsp/Common/NavbarCmss.jsp"%>
    <head>
        <title>Material List</title>
    </head>
    <script>
        function viewClick(id) {
            var loginName = $('#loginName' + id).val();
            window.location = 'materialTypeMaster.htm?act=viewClick&id=' + id;
        }
        function deleteCheck11() {
            var checkboxes = "";
            checkboxes = document.getElementsByName('checkId');
            for (var i = 0, n = checkboxes.length; i < n; i++) {
                if (checkboxes[i].checked) {
                    return true;
                }
            }
            alert("Please, Select one or more record(s).");
            return false;
        }
    </script>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Material Type List</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Material Type List</li>
            </ol>
        </section>
        <c:if test="${!empty successMessage}">
            <div class="fadeOutEffect alert alert-info" role="alert">${successMessage}</div>
        </c:if>
        <c:if test="${!empty failureMessage}">
            <div class="fadeOutEffect alert alert-danger" role="alert">${failureMessage}</div>
        </c:if>
        <!-- Main content -->
        <form:form action="materialTypeMaster.htm?act=deleteSubmit" method="post" commandName="materialTypeMaster"
                   name='form1' onsubmit='return deleteCheck11();' class="form-horizontal" role="form">
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                     <!-- Custom Tabs -->
                        <div class="nav-tabs-custom">
                            <div class="tab-content">
                              
                                    <button type="button" class="btn btn-primary" title="" style="float: right;width: 100px;" onclick="window.location = 'materialTypeMaster.htm?act=showList'"><i class="fa fa-plus"></i>&nbsp;&nbsp;New</button>
                               
                               
                                    <button type="submit" class="btn btn-danger" title="" style="width: 100px;"><i class="fa fa-trash"></i>&nbsp;&nbsp;DELETE</button>
                              
                                <div class="box-header">
                                </div>
                                <div class="box-body no-padding">

                                    <div class="row">

                                        <div class="col-md-12 col-sm-12">
                                            <div class="table table-bordered">

                                                <table id="table_1" class="table table-bordered table-striped table-hover" style="" align="Center"  >
                                                    <c:choose>
                                                        <c:when test="${empty materialTypeMasterList}">
                                                            <tr>
                                                                <td align="Center">There Is No Any Record</td>
                                                            </tr>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <thead>
                                                                <tr>
                                                                    <th style="width: 1px;" align="Center"><input type="checkbox" id="toggleId" align="Center" ></th>
                                                                    <th>Sr.No.</th>
                                                                    <th>Material Type</th>
                                                                   
                                                                        <c:if test="${fn:contains(sessionScope.wright[3],'U')}">
                                                                        <th>View/Edit</th>
                                                                        </c:if>
                                                                </tr>
                                                            </thead>
                                                            <c:set var="count" value="0" scope="page" />
                                                            <tbody>
                                                                <c:forEach var="materialTypeMasterList" items="${materialTypeMasterList}" varStatus="status">
                                                                    <tr>
                                                                        <td align="Center">
                                                                            <input type="checkbox" name="checkId" id="CheckId" value="${materialTypeMasterList.id}">
                                                                        </td>
                                                                        <td> ${status.count}</td>
                                                                        <td>${materialTypeMasterList.materialType}</td>
                                                                      
                                                                       
                                                                            <td>
                                                                                <div class="btn-group">
                                                                                    <button type="button" class="btn btn-default dropdown-toggle" id="loginName${status.count}" value="${materialTypeMasterList.id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  onclick="viewClick(${materialTypeMasterList.id});">
                                                                                        &nbsp;View/Edit
                                                                                    </button>

                                                                                </div>
                                                                            </td>
                                                                   

                                                                    </tr>
                                                                </c:forEach>
                                                            </tbody>

                                                        </c:otherwise>
                                                    </c:choose>
                                                </table>
                                            </div>
                                        </div>

                                    </div> 
                                </div>
                            </div>  
                        </div> 
                    </div> 
                </div>
            </section>
        </form:form> 
    </div>
    <%@include file="/WEB-INF/jsp/Common/Footer.jsp"%>
</html>
