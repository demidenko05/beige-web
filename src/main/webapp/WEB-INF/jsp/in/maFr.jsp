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
  <td>
    <div class="input-line">
      <select required name="MaFrn.clsNm" onchange="bsInpChn(this);">
        <option value=""${emptsel}>-</option>
        <c:if test="${ent.clsNm ne 'Lng'}">
          <c:set var="sel" value=""/>
        </c:if>
        <c:if test="${ent.clsNm eq 'Lng'}">
          <c:set var="sel" value="selected"/>
        </c:if>
        <option value="Lng"${sel}>${i18n.getMsg('Lng', rvs.upf.lng.iid)}</option>
        <c:if test="${ent.clsNm ne 'Cntr'}">
          <c:set var="sel" value=""/>
        </c:if>
        <c:if test="${ent.clsNm eq 'Cntr'}">
          <c:set var="sel" value="selected"/>
        </c:if>
        <option value="Cntr"${sel}>${i18n.getMsg('Cntr', rvs.upf.lng.iid)}</option>
      </select>
    </div>
  </td>
</tr>
