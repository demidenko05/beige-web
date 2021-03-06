<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" name="${cls.simpleName}.isNew" value="${ent.isNew}"/> 
<c:if test="${ent.isNew}">
  <tr>
    <td>
      <label for="${cls.simpleName}.${fdNm}">${i18n.getMsg(fdNm, rvs.upf.lng.iid)}</label>
    </td>
  <c:if test="${not empty param.mbl}"></tr><tr></c:if>
    <td>
      <div class="input-line">
        <c:set var="reqd" value=""/>
        <c:if test="${!hldUvd.lazNulb(cls,fdNm)}">
          <c:set var="reqd" value="required"/>
        </c:if>
        <c:set var="selDis" value=""/>
        <c:if test="${empty ent[fdNm]}"> <c:set var="selDis" value="selected"/> </c:if>
        <select ${reqd} ${auFoc} name="${cls.simpleName}.${fdNm}" onchange="bsInpChn(this);">
          <option value="" ${selDis}>-</option>
          <c:forEach var="enm" items="${hldUvd.fldCls(cls, fdNm).getEnumConstants()}">
            <c:if test="${!enm.equals(ent[fdNm])}"> <c:set var="selDis" value=""/> </c:if>
            <c:if test="${enm.equals(ent[fdNm])}"> <c:set var="selDis" value="selected"/> </c:if>
            <option value="${enm}" ${selDis}>${i18n.getMsg(enm, rvs.upf.lng.iid)}</option>
          </c:forEach>
        </select>
        <c:set var="auFoc" value="" scope="request"/>
      </div>
    </td>
  </tr>
</c:if>
<c:if test="${!ent.isNew}">
  <input type="hidden" name="${cls.simpleName}.ver" value="${ent.ver}"/> 
  <jsp:include page="reo.jsp"/>
</c:if>
