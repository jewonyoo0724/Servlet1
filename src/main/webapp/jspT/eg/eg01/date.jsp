<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("h시 m분 s초");
%>

<div>
	Current time : <%= formatter.format(now) %>
</div>