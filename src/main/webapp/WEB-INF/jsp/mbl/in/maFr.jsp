<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty ent.clsNm}">
  <c:set var="emptsel" value=""/>
</c:if>
<c:if test="${empty ent.clsNm}">
  <c:set var="emptsel" value="selected"/>
</c:if>
<tr>
  <td>
    <label for="MaFrn.clsNm">${i18n.getMsg("clsNm", rvs.upf.lng.iid)}</label>
  </td>
<tr>
</tr>
  <td>
    <div class="input-line">
      <select ${auFoc} required name="MaFrn.clsNm" onchange="bsInpChn(this);">
        <c:set var="auFoc" value="" scope="request"/>
        <option value="" ${emptsel}>-</option>
        <c:forEach var="cls" items="${hlMaFrCl.clss}">
          <c:if test="${ent.clsNm ne cls.simpleName}">
            <c:set var="sel" value=""/>
          </c:if>
          <c:if test="${ent.clsNm eq cls.simpleName}">
            <c:set var="sel" value="selected"/>
          </c:if>
          <option value="${cls.simpleName}" ${sel}>${i18n.getMsg(cls.simpleName, rvs.upf.lng.iid)}</option>
        </c:forEach>
      </select>
    </div>
  </td>
</tr>
