<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<dialog id="piCsvPth${param.ret}Dlg" class="dlg">
  <div class="form-std">
    <div class="dialog-title">
      ${i18n.getMsg("dataPath", rvs.upf.lng.iid)}
      <button onclick="bsClsDlg('piCsvPth${param.ret}Dlg')" class="btn-close">x</button>
    </div>
    <div>
      <ul>
      <c:forEach var="node" items="${rvs.csDtTr}" varStatus="status">
        <li>${status.index + 1}-
          <c:if test="${not empty node.val}"><button class="btn" onClick="bsSetCsvPth('${node.val}', '${node.nme}');bsClsDlg('piCsvPth${param.ret}Dlg');">${node.nme}</button></c:if>
          <c:if test="${empty node.val}">${node.nme}</c:if>
          <c:if test="${not empty node.nodes}">
            <ul><c:forEach var="node1" items="${node.nodes}">
              <li>
                <c:if test="${not empty node1.val}"><button class="btn" onClick="bsSetCsvPth('${node1.val}', '${node.nme}-${node1.nme}');bsClsDlg('piCsvPth${param.ret}Dlg');">${node1.nme}</button></c:if>
                <c:if test="${empty node1.val}">${node1.nme}</c:if>
                <c:if test="${not empty node.nodes}">
                  <ul><c:forEach var="node2" items="${node1.nodes}">
                    <li>
                      <c:if test="${not empty node2.val}"><button class="btn" onClick="bsSetCsvPth('${node2.val}', '${node.nme}-${node1.nme}-${node2.nme}');bsClsDlg('piCsvPth${param.ret}Dlg')">${node2.nme}</button></c:if>
                      <c:if test="${empty node2.val}">${node2.nme}</c:if>
                      <c:if test="${not empty node.nodes}">
                        <ul><c:forEach var="node3" items="${node2.nodes}">
                          <li>
                            <c:if test="${not empty node3.val}"><button class="btn" onClick="bsSetCsvPth('${node3.val}', '${node.nme}-${node1.nme}-${node2.nme}-${node3.nme}');bsClsDlg('piCsvPth${param.ret}Dlg')">${node3.nme}</button></c:if>
                            <c:if test="${empty node3.val}">${node3.nme}</c:if>
                            <c:if test="${not empty node.nodes}">
                              <ul><c:forEach var="node4" items="${node3.nodes}">
                                <li>
                                  <c:if test="${not empty node4.val}"><button class="btn" onClick="bsSetCsvPth('${node4.val}', '${node.nme}-${node1.nme}-${node2.nme}-${node3.nme}-${node4.nme}');bsClsDlg('piCsvPth${param.ret}Dlg')">${node4.nme}</button></c:if>
                                  <c:if test="${empty node4.val}">${node4.nme}</c:if>
                                  <c:if test="${not empty node.nodes}">
                                    <ul><c:forEach var="node5" items="${node4.nodes}"><li>
                                      <c:if test="${not empty node5.val}"><button class="btn" onClick="bsSetCsvPth('${node5.val}', '${node.nme}-${node1.nme}-${node2.nme}-${node3.nme}-${node4.nme}-${node5.nme}');bsClsDlg('piCsvPth${param.ret}Dlg')">${node5.nme}</button></c:if>
                                      <c:if test="${empty node5.val}">${node5.nme}</c:if></li>
                                    </c:forEach></ul>
                                  </c:if>
                                </li>
                              </c:forEach></ul>
                            </c:if>
                          </li>
                        </c:forEach></ul>
                      </c:if>
                    </li>
                  </c:forEach></ul>
                </c:if>
              </li>
            </c:forEach></ul>
          </c:if>
        </li>
      </c:forEach>
      </ul>
    </div>
  </div>
</dialog>
