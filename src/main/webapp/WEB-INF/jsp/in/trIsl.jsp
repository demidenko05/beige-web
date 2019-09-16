<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tr>
  <td>
    <label for="${cls.simpleName}.${fdNm}">${i18n.getMsg(fdNm, rvs.upf.lng.iid)}</label>
  </td>
<c:if test="${not empty param.mbl}"></tr><tr></c:if>
  <td>
    <div class="input-line">
      <select ${auFoc} name="${cls.simpleName}.${fdNm}" onchange="bsInpChn(this);">
        <c:if test="${ent[fdNm] != 1}"> <c:set var="selDis1" value=""/> </c:if>
        <c:if test="${ent[fdNm] == 1}"> <c:set var="selDis1" value="selected"/> </c:if>
        <option value="${1}" ${selDis1}>${i18n.getMsg("TRANSACTION_READ_UNCOMMITTED", rvs.upf.lng.iid)}</option>
        <c:if test="${ent[fdNm] != 2}"> <c:set var="selDis2" value=""/> </c:if>
        <c:if test="${ent[fdNm] == 2}"> <c:set var="selDis2" value="selected"/> </c:if>
        <option value="${2}" ${selDis2}>${i18n.getMsg("TRANSACTION_READ_COMMITTED", rvs.upf.lng.iid)}</option>
        <c:if test="${ent[fdNm] != 4}"> <c:set var="selDis3" value=""/> </c:if>
        <c:if test="${ent[fdNm] == 4}"> <c:set var="selDis3" value="selected"/> </c:if>
        <option value="${4}" ${selDis3}>${i18n.getMsg("TRANSACTION_REPEATABLE_READ", rvs.upf.lng.iid)}</option>
        <c:if test="${ent[fdNm] != 8}"> <c:set var="selDis4" value=""/> </c:if>
        <c:if test="${ent[fdNm] == 8}"> <c:set var="selDis4" value="selected"/> </c:if>
        <option value="${8}" ${selDis4}>${i18n.getMsg("TRANSACTION_SERIALIZABLE", rvs.upf.lng.iid)}</option>
      </select>
      <c:set var="auFoc" value="" scope="request"/>
    </div>
  </td>
</tr>
