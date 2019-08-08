<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="shortcut icon" href="../img/favicon.png">
  <script type="text/javascript" src="../js/bsForm.js"></script>
  <script type="text/javascript" src="../js/bsI18n${rvs.upf.lng.iid}.js"></script>
  <link rel="stylesheet" href="../css/bsCmn.css">
  <title>${i18n.getMsg("mngSoftware", rvs.upf.lng.iid)}</title>
</head>
<body style="padding: 20px;" >

  <a class="btn" href="../">${i18n.getMsg("home", rvs.upf.lng.iid)}</a>

  <div class="form-std form-70-33">
    <div class="dialog-title">
      ${i18n.getMsg("mngSoftware", rvs.upf.lng.iid)}
    </div>
    <form method="post" action="?prc=MngSft">
      <table class="tbl-fieldset">
        <tr>
          <td>
            <label>${i18n.getMsg("rngMth", rvs.upf.lng.iid)}:</label>
          </td>
          <td>
            <div style="display: flex;">
              <select name="act" onchange="bsInpChn(this);">
                <c:if test="${mngSft.log.rngMth eq 'ONLY'}"> <c:set var="sels" value="selected"/> </c:if>
                <option value="sonl" ${sels}>${i18n.getMsg("ONLY", rvs.upf.lng.iid)}</option>
                <c:if test="${mngSft.log.rngMth eq 'MULTI'}"> <c:set var="selm" value="selected"/> </c:if>
                <option value="amul" ${selm}>${i18n.getMsg("MULTI", rvs.upf.lng.iid)}</option>
              </select>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <label>${i18n.getMsg("dbgSh", rvs.upf.lng.iid)}:</label>
          </td>
          <td>
            <div style="display: flex;">
              <select name="dbgSh" onchange="bsInpChn(this);">
                <c:if test="${mngSft.log.dbgSh}"> <c:set var="selT" value="selected"/> </c:if>
                <option value="true" ${selT}>${i18n.getMsg("Yes", rvs.upf.lng.iid)}</option>
                <c:if test="${!mngSft.log.dbgSh}"> <c:set var="selF" value="selected"/> </c:if>
                <option value="false" ${selF}>${i18n.getMsg("No", rvs.upf.lng.iid)}</option>
              </select>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <label>${i18n.getMsg("dbgFl", rvs.upf.lng.iid)}:</label>
          </td>
          <td>
            <div style="display: flex;">
              <input name="dbgFl" type="number" value="${mngSft.log.dbgFl}" onchange="bsInpChn(this);">
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <label>${i18n.getMsg("dbgCl", rvs.upf.lng.iid)}:</label>
          </td>
          <td>
            <div style="display: flex;">
              <input name="dbgCl" type="number" value="${mngSft.log.dbgCl}" onchange="bsInpChn(this);">
            </div>
          </td>
        </tr>
      </table>
      <c:set var="apply" value="${i18n.getMsg('Apply')}"/>
      <div class="form-actions">
        <button onclick="if (bsIfFrmChd(this.form)) bsCnfSbm(this, '${apply}?'); return false;" class="btn">${apply}</button>
      </div>
    </form>
    <c:if test="${mngSft.log.ranges != null && mngSft.log.ranges.size() gt 0}">
      <c:set var="delq" value="${i18n.getMsg('Delete', rvs.upf.lng.iid)}"/>
      <div>
        <table>
          <tr>
            <th>${i18n.getMsg('dbgFl', rvs.upf.lng.iid)}</th>
            <th>${i18n.getMsg('dbgCl', rvs.upf.lng.iid)}</th>
            <th class="column-actions">${i18n.getMsg('Actions', rvs.upf.lng.iid)}</th>
          </tr>
          <c:forEach var="rng" items="${mngSft.log.ranges}" varStatus="vrSt">
            <tr>
              <td>${rng.dbgFl}</td>
              <td>${rng.dbgCl}</td>
              <td class="column-actions" style="padding: .4rem;">
                <a class="btn" href="?prc=MngSft&act=drng&ridx=${vrSt.index}" onclick="bsCnfHref(this, '${delq}?'); return false;">${i18n.getMsg("Delete", rvs.upf.lng.iid)}</a>
              </td>
            </tr>
          </c:forEach>
        </table>
      </div>
    </c:if>
  </div>

  <dialog id="dlgCnf" class="dlg dlg-alert">
      <div class="confirm">
        <div class="dialog-title confirm-title">
          Conformation.
          <button onclick="document.getElementById('dlgCnf').close();" class="btn-close btn-confirm">x</button>
        </div>
        <div id="cnfPl" class="msg-place">
        </div>
        <div class="dlg-actions">
          <button id="cnfYes" class="btn btn-act btn-confirm">${i18n.getMsg("Yes", rvs.upf.lng.iid)}</button>
          <button onclick="document.getElementById('dlgCnf').close();" class="btn btn-act btn-confirm">${i18n.getMsg("No", rvs.upf.lng.iid)}</button>
        </div>
     </div>
  </dialog>

</body>
</html>

