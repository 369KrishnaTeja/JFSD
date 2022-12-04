<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <meta charset="utf-8">
    <style><%@include file="./css/searchBar.css" %></style>
    
<div style="max-width: 50%">
    <form id="content" action="/getslab" method="get">
  <input type="text" class="sBar" id="search-input" name="units" path="units" ></input>
  <button type="reset" class="search" id="search-btn"></button>
</form>
</div>

<script>// updated 2019
const input = document.getElementById("search-input");
const searchBtn = document.getElementById("search-btn");

const expand = () => {
  searchBtn.classList.toggle("close");
  input.classList.toggle("square");
};

searchBtn.addEventListener("click", expand);




//  old version / jquery
//
// function expand() {
//   $(".search").toggleClass("close");
//   $(".input").toggleClass("square");
//   if ($('.search').hasClass('close')) {
//     $('input').focus();
//   } else {
//     $('input').blur();
//   }
// }
// $('button').on('click', expand);
//
</script>