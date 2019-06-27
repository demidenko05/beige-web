<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tr>
  <td>
    <label for="${cls.simpleName}${fdNm}ApVsb">${i18n.getMsg(fdNm, rvs.upf.lng.iid)}</label>
  </td>
  <td>
    <div class="input-line">
      <c:if test="${ent.isNew}">
        <input class="picked-appearence" id="${cls.simpleName}${fdNm}ApVsb" disabled="disabled" type="text" value="${ent[fdNm].usr}">
        <input id="${cls.simpleName}${fdNm}Id" required type="hidden" name="${cls.simpleName}.${fdNm}" value="${ent[fdNm].usr}">
        <button type="button" ${auFoc} class="btn" onclick="bsPick('${hldUvd.fldCls(cls,fdNm).simpleName}','${cls.simpleName}','${fdNm}','&mbl=${param.mbl}');">...</button>
        <c:set var="auFoc" value="" scope="request"/>
        <button type="button" class="btn" onclick="bsClrSelEnt('${cls.simpleName}${fdNm}');">X</button>
      </c:if>
      <c:if test="${!ent.isNew}">
        <input disabled="disabled" type="text" value="${ent[fdNm].usr}">
        <input type="hidden" name="${cls.simpleName}.${fdNm}" value="${ent[fdNm].usr}">
      </c:if>
    </div>
  </td>
</tr>
