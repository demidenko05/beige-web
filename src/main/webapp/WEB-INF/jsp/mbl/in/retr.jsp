<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty ent.rtrNm}">
  <c:set var="emptsel" value=""/>
</c:if>
<c:if test="${empty ent.rtrNm}">
  <c:set var="emptsel" value="selected"/>
</c:if>
<tr>
  <td>
    <label for="CsvMth.rtrNm">${i18n.getMsg("rtrNm", rvs.upf.lng.iid)}</label>
  </td>
<tr>
</tr>
  <td>
    <div class="input-line">
      <select name="CsvMth.rtrNm" onchange="bsInpChn(this);">
        <option value="" ${emptsel}>-</option>
        <c:forEach var="rtnm" items="${hlRtrs.nms}">
          <c:if test="${ent.rtrNm ne rtnm}">
            <c:set var="sel" value=""/>
          </c:if>
          <c:if test="${ent.rtrNm eq rtnm}">
            <c:set var="sel" value="selected"/>
          </c:if>
          <option value="${rtnm}" ${sel}>${i18n.getMsg(rtnm, rvs.upf.lng.iid)}</option>
        </c:forEach>
      </select>
    </div>
  </td>
</tr>
