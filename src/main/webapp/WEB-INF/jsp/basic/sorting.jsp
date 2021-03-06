<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables" uri="http://github.com/tduchateau/DataTables-taglib"%>

<div class="row">
   <div class="span12">
      <h3>Table sorting</h3>
      <p>
         The example below shows how to sort columns.
      </p>
      <p>
         You just need to add the <strong>sortable</strong> attribute to each columns you want to sort and set it to <strong>true</strong>.
      </p>
      <p>
         Internally, it uses the <a href="http://datatables.net/usage/columns">aoColumns</a> attribute.
      </p>
      <div class="alert alert-block">
         For the moment, you still cannot choose the sorting direction and type.
      </div>
   </div>
</div>

<div class="row">
   <div class="span12">

      <datatables:table htmlTableId="mySortedTable" dataObjectId="row" data="${persons}">
         <datatables:column title="#" property="id" />
         <datatables:column title="Name" property="lastName" sortable="true" />
         <datatables:column title="Mail" property="mail" sortable="true" />
         <datatables:column title="City" sortable="true">
            <c:out value="${row.address.town.label}" />
         </datatables:column>
         <datatables:column title="Street">
            <c:out value="${row.address.street1}"></c:out>
         </datatables:column>
      </datatables:table>

   </div>
</div>

<br />

<div class="row">
   <div class="span12">
      <div class="bs-docs-example">
         <small>
            <h5>JSP</h5>
            <p>src/main/webapp/WEB-INF/jsp/basic/sorting.jsp</p>
            <h5>JS</h5>
            <ul>
               <li>src/main/webapp/js/jquery-1.7.2.min.js</li>
               <li>src/main/webapp/js/bootstrap.min.js</li>
               <li>src/main/webapp/js/jquery.dataTables.min.js</li>
            </ul>
            <h5>CSS</h5>
            <ul>
               <li>src/main/webapp/css/bootstrap.min.js</li>
               <li>src/main/webapp/js/jquery.dataTables.min.js</li>
            </ul>
         </small>
      </div>
   </div>
</div>
