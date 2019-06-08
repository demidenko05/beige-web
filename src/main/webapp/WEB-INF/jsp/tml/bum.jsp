<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <div id="lstMnPl">
  </div>
  
  <div id="frmMnPl">
  </div>

  <div id="frmSbPl">
  </div>

  <div id="pisPl">
  </div>

  <div id="pisPlD">
  </div>

  <div id="trgInf">
  </div>

  <dialog id="dlgCnf" class="dlg dlg-alert">
      <div class="confirm">
        <div class="dialog-title confirm-title">
          ${i18n.getMsg("Conformation", rvs.upf.lng.iid)}.
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

  <dialog id="dlgI18n" class="dlg dlg-alert">
      <div class="confirm">
        <div class="dialog-title confirm-title">
          ${i18n.getMsg("changeUsPrf", rvs.upf.lng.iid)}
          <button onclick="document.getElementById('dlgI18n').close();" class="btn-close btn-confirm">x</button>
        </div>
        <form id="lngPrefFrm" action="?" method="POST">
          <div>
            <table class="tbl-fieldset">
              <tbody>
                <tr>
                  <td>
                    <label>${i18n.getMsg("lng", rvs.upf.lng.iid)}</label>
                  </td>
                  <td>
                    <div class="input-line">
                      <select name="lng" onchange="bsInpChn(this);">
                        <c:forEach var="it" items="${rvs.lngs}">
                          <c:set var="itmSel" value=""/>
                          <c:if test="${rvs.upf.lng.iid eq it.iid}">
                            <c:set var="itmSel" value="selected"/>
                          </c:if>
                          <option value="${it.iid}" ${itmSel}>${it.nme}</option>
                        </c:forEach>
                      </select>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <label>${i18n.getMsg("dcSp", rvs.upf.lng.iid)}</label>
                  </td>
                  <td>
                    <div class="input-line">
                      <select name="dcSp" onchange="bsInpChn(this);">
                        <c:forEach var="it" items="${rvs.dcSps}">
                          <c:set var="itmSel" value=""/>
                          <c:if test="${rvs.upf.dcSp.iid eq it.iid}">
                            <c:set var="itmSel" value="selected"/>
                          </c:if>
                          <option value="${it.iid}" ${itmSel}>${i18n.getMsg(it.nme, rvs.upf.lng.iid)}</option>
                        </c:forEach>
                      </select>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <label>${i18n.getMsg("dcGrSp", rvs.upf.lng.iid)}</label>
                  </td>
                  <td>
                    <div class="input-line">
                      <select name="dcGrSp" onchange="bsInpChn(this);">
                        <c:forEach var="it" items="${rvs.dcGrSps}">
                          <c:set var="itmSel" value=""/>
                          <c:if test="${rvs.upf.dcGrSp.iid eq it.iid}">
                            <c:set var="itmSel" value="selected"/>
                          </c:if>
                          <option value="${it.iid}" ${itmSel}>${i18n.getMsg(it.nme, rvs.upf.lng.iid)}</option>
                        </c:forEach>
                      </select>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <label>${i18n.getMsg("dgInGr", rvs.upf.lng.iid)}</label>
                  </td>
                  <td>
                    <div class="input-line">
                      <select name="dgInGr" onchange="bsInpChn(this);">
                        <c:set var="itmSel" value=""/>
                        <c:if test="${rvs.upf.dgInGr == 2}">
                          <c:set var="itmSel" value="selected"/>
                        </c:if>
                        <option value="2" ${itmSel}>2 ${i18n.getMsg("Indian", rvs.upf.lng.iid)}</option>
                        <c:set var="itmSel" value=""/>
                        <c:if test="${rvs.upf.dgInGr == 3}">
                          <c:set var="itmSel" value="selected"/>
                        </c:if>
                        <option value="3" ${itmSel}>3</option>
                        <c:set var="itmSel" value=""/>
                        <c:if test="${rvs.upf.dgInGr == 4}">
                          <c:set var="itmSel" value="selected"/>
                        </c:if>
                        <option value="4" ${itmSel}>4</option>
                      </select>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="dlg-actions">
            <input style="display: none" id="lngPrefFrmFakeSubmit" type="submit">
            <button type="submit" class="btn btn-act btn-confirm" onclick="return bsChkFrm(this.form, true);">${i18n.getMsg("Apply", rvs.upf.lng.iid)}</button>
            <button type="button" onclick="document.getElementById('dlgI18n').close(); return false;" class="btn btn-act btn-confirm">${i18n.getMsg("Close", rvs.upf.lng.iid)}</button>
          </div>
        </form>
     </div>
  </dialog>

  <dialog id="dlgErr" class="dlg dlg-alert">
      <div class="error">
        <div class="dialog-title error-title">
          ${i18n.getMsg("Error", rvs.upf.lng.iid)}!
          <button onclick="document.getElementById('dlgErr').close()" class="btn-close btn-error">x</button>
        </div>
        <div id="errPl" class="msg-place">
        </div>
     </div>
  </dialog>

  <dialog id="dlgWrn" class="dlg dlg-alert">
    <div class="warning">
      <div class="dialog-title warning-title">
        ${i18n.getMsg("Warning", rvs.upf.lng.iid)}!
        <button onclick="document.getElementById('dlgWrn').close()" class="btn-close btn-warning">x</button>
      </div>
      <div id="wrnPl" class="msg-place">
      </div>
   </div>
  </dialog>

  <div id="dlgSuc" class="dlg-notifier">
    <div class="success">
      <div class="dialog-title success-title">
        ${i18n.getMsg("Success", rvs.upf.lng.iid)}!
        <button onclick="document.getElementById('dlgSuc').close()" class="btn-close btn-success">x</button>
      </div>
      <div id="sucPl" class="msg-place">
      </div>
   </div>
  </div>
