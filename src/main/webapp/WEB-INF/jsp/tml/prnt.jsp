<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="fn" items="${hldUvd.lazFrmFds(cls)}">
  <c:set var="fdNm" value="${fn}" scope="request"/>
  <c:set var="mdl" value="${ent[fn]}" scope="request"/>
  ${i18n.getMsg(fn, rvs.upf.lng.iid)}:
  <jsp:include page="../st/${hldUvd.stgNn(cls,fn,'str')}.jsp"/><br>
</c:forEach>
<br>
<c:if test="${rvs.uvs.owdEntsMp != null && rvs.uvs.owdEntsMp.size() gt 0}">
  <c:forEach var="olme" items="${rvs.uvs.owdEntsMp}">
    <c:set var="cls" value="${olme.key}" scope="request"/>
    <c:set var="nameEnts" value="${cls.simpleName}s"/>
    <div class="title-list">${i18n.getMsg(nameEnts, rvs.upf.lng.iid)}</div>
    <table>
      <tr>
        <c:forEach var="fn" items="${hldUvd.lazFrmFds(cls)}">
          <c:if test="${not empty hldUvd.stg(cls,fn,'ceHe')}">
            <th>${i18n.getMsg(fn, rvs.upf.lng.iid)}</th>
          </c:if>
        </c:forEach>
      </tr>
      <c:forEach var="entt" items="${olme.value}">
        <c:set var="ent" value="${entt}" scope="request"/>
        <tr>
          <c:forEach var="fn" items="${hldUvd.lazFrmFds(cls)}">
            <c:set var="fdNm" value="${fn}" scope="request"/>
            <c:if test="${not empty hldUvd.stg(cls,fdNm,'ceHe')}">
              <c:set var="mdl" value="${ent[fn]}" scope="request"/>
              <td><jsp:include page="../st/${hldUvd.stgNn(cls,fn,'str')}.jsp"/></td>
            </c:if>
          </c:forEach>
        </tr>
      </c:forEach>
    </table>
  </c:forEach>
  <c:set var="cls" value="${rvs.uvs.cls}" scope="request"/>
</c:if>
