<%@ page contentType="text/css;charset=UTF-8" %>
<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>

<c:set var="val" value="${c:property('org.zkoss.zul.theme.fontSizeM')}"/>
<c:set var="fontSizeM" value="${val}" scope="request" unless="${empty val}"/>
<c:set var="val" value="${c:property('org.zkoss.zul.theme.fontSizeMS')}"/>
<c:set var="fontSizeMS" value="${val}" scope="request" unless="${empty val}"/>
<c:set var="val" value="${c:property('org.zkoss.zul.theme.fontSizeS')}"/>
<c:set var="fontSizeS" value="${val}" scope="request" unless="${empty val}"/>
<c:set var="val" value="${c:property('org.zkoss.zul.theme.fontSizeXS')}"/>
<c:set var="fontSizeXS" value="${val}" scope="request" unless="${empty val}"/>
<c:set var="val" value="${c:property('org.zkoss.zul.theme.fontFamilyT')}"/>
<c:set var="fontFamilyT" value="${val}" scope="request" unless="${empty val}"/>
<c:set var="val" value="${c:property('org.zkoss.zul.theme.fontFamilyC')}"/>
<c:set var="fontFamilyC" value="${val}" scope="request" unless="${empty val}"/>

<c:set var="fontSizeM" value="12px" scope="request" if="${empty fontSizeM}"/>
<c:set var="fontSizeMS" value="11px" scope="request" if="${empty fontSizeMS}"/>
<c:set var="fontSizeS" value="11px" scope="request" if="${empty fontSizeS}"/>
<c:set var="fontSizeXS" value="10px" scope="request" if="${empty fontSizeXS}"/>

<c:set var="fontFamilyT" value="Verdana, Tahoma, Arial, Helvetica, sans-serif"
	scope="request" if="${empty fontFamilyT}"/><%-- title --%>
<c:set var="fontFamilyC" value="Verdana, Tahoma, Arial, Helvetica, sans-serif"
	scope="request" if="${empty fontFamilyC}"/><%-- content --%>

html, body {height:100%}

<c:if test="${empty c:property('org.zkoss.zul.theme.browserDefault')}">
body {
	margin: 0px; padding: 0px 5px;
}
</c:if>

<%-- paragraphs --%>
img {border: 0;}

<%-- DSP --%>
a.gamma {color: #000; text-decoration: none;}
a.gamma:hover {color: #000; text-decoration: underline;}
tr.gamma {background: #F4F4F4;}
td.gamma {background: #F4F4F4;}

<%-- ZK JavaScript debug box --%>
div.z-error {
	position:absolute; z-index:99000;
	width:550px; border:1px solid #963; background-color:#fcc090
}
div.z-error .btn {
	color: #555; text-decoration: none; font-size: ${fontSizeS};
	background-color: #ffd8a8; padding: 1px 3px;
	border: 1px solid #766;
	border-left: 1px solid #a89a9a; border-top: 1px solid #a89a9a;
}
.z-error-msg {
	border: 1px inset; background-color: #fc9;
}
div.z-log {
	text-align:right; width:50%; right:10px; bottom:5px;
	position:absolute; z-index: 99000;
}
div.z-log textarea {
	width: 100%
}
div.z-log button {
	font-size: ${fontSizeXS};
}
.z-debug-domtree {
	width:80%; right:10px; bottom:5px;
	position:absolute; z-index: 99000; 
	overflow: auto; color: #7D9196;
	height: 300px; background: white;
	padding: 2px; border: 1px solid gray;
}
.z-debug-domtree .z-debug-domtree-header {
	overflow: hidden; zoom: 1; color: #403E39; font: normal ${fontSizeM} ${fontFamilyT};
	padding: 5px 3px 4px 5px; border: 1px solid #999884; line-height: 15px; 
	background:transparent url(${c:encodeURL('~./zk/img/debug/hd-gray.png')}) repeat-x 0 -1px;
	font-weight:bold;
}
.z-debug-domtree .z-debug-domtree-body {
	border: 1px solid #999884;
	border-top: 0px;
}
.z-debug-domtree-close {
	overflow: hidden; width: 15px; height: 15px; float: right; cursor: pointer;
	background-color : transparent;
	background-image : url(${c:encodeURL('~./zk/img/debug/tool-btn.gif')});
	background-position : 0 0;
	background-repeat : no-repeat;
	margin-left: 2px;
}
.z-debug-domtree-close-over {
	background-position: -15px 0;
}
<%-- General --%>
.noscript {<%-- the content of noscript --%>
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 32000;
	top: 0;
	left: 0;
	filter: alpha(opacity=60);
	opacity: .6;
	zoom: 1;
	text-align: center;
	background: #E0E1E3;
}
.noscript p {
	background: white;
	font-weight: bold;
	color: black;
	margin: 10% 15%;
	padding: 10px 0;
	border: 1px solid black;
	filter: alpha(opacity=100);
	opacity: 1;
}

.z-label, .z-radio-cnt, .z-checkbox-cnt, input.button, input.file,
.z-loading {
	font-family: ${fontFamilyC};
	font-size: ${fontSizeM}; font-weight: normal;
}
.z-upload-icon {
	overflow: hidden;
	background-image: url(${c:encodeURL('~./zk/img/prgmeter.png')});
}
.z-modal-mask {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0; left: 0;
	filter: alpha(opacity=60); <%-- IE --%>
	opacity: .6;
	zoom: 1;
	background: #E0E1E3;
}
.z-loading {
	background-color: #6eadff;
	position: absolute;
	cursor: wait;
	padding:3px;
	white-space: nowrap;
	border: 1px solid #83B5F7;
	z-index: 31000;
	left: 0; top: 0;
}
.z-loading-indicator {
	background-color: #FFFFFF;
	color: #102B6D;
	border:1px solid #83B5F7;
	white-space: nowrap;
	padding:6px;
}
.z-apply-loading-icon,
.z-loading-icon {
	height: 16px;
	width: 16px;
	display:-moz-inline-box; vertical-align:top; display:inline-block;
	background: transparent no-repeat center;
	background-image: url(${c:encodeURL('~./zk/img/progress2.gif')});
}

.z-apply-mask {
	width: 100%;
	height: 100%;
	background: #E0E1E3;
	position: absolute;
	z-index: 89000;
	top: 0;
	left: 0;
	filter: alpha(opacity=60);
	opacity: .6;
	zoom: 1;
}
.z-apply-loading-indicator {
	border:1px solid #A6C5DC;
	background-color: #FFF;
	color: #102B6D;
	white-space: nowrap;
	padding: 2px;
	font: normal ${fontSizeM} ${fontFamilyT};
	cursor: wait;
}
.z-apply-loading {
	position: absolute;
	background-color: #CEDFEC;
	border: 1px solid #99C6E9;
	z-index: 89500;
	padding: 3px;
	cursor: wait;
	overflow: hidden;
	white-space: nowrap;
}
.z-inline-block { <%-- used with label/checkbox and others to ensure the dimension --%>
	display:-moz-inline-box; vertical-align:top;<%-- vertical-align: make it looks same in diff browsers --%>
	display:inline-block;
}
.z-word-wrap {
	word-wrap: break-word;
}
.z-overflow-hidden {
	overflow: hidden;
}
.z-dd-stackup {
	height: 100%;
	width: 100%;
	position: absolute;
	left: 0;
	top: 0;
	z-index: 16800;
	background-image: url(${c:encodeURL('~./img/spacer.gif')});
}
<%-- Fix float issue for CSS --%>
.z-clear {
	clear: both;
	height: 1px;
	width: 1px;
	line-height: 0;
	font-size: 0;
	overflow: hidden;
}
<%-- Shadow --%>
.z-shadow {
	position: absolute;
	display: none;
	left: 0;
	top: 0;
	overflow: hidden;
}
.z-shadow-wrapper{
	padding-bottom:6px;
	height:100%;
}
.z-shadow .z-shadow-cl{
	background: transparent  repeat-y 0 0;
	background-image: url(${c:encodeURL('~./zul/img/shadow-cl.png')});
	padding-left: 6px;
	overflow: hidden;
	height:100%;
	zoom: 1;
}
.z-shadow .z-shadow-cr{
	background: transparent  repeat-y right;
	background-image: url(${c:encodeURL('~./zul/img/shadow-cr.png')});
	padding-right: 6px;
	overflow: hidden;
	height:100%;
	zoom: 1;
}
.z-shadow .z-shadow-cm {
	background: transparent repeat 0 0;
	background-image: url(${c:encodeURL('~./zul/img/shadow-m.png')});
	overflow: hidden;
	height:100%;
	zoom: 1;
}

.z-shadow .z-shadow-tl {
	background:transparent no-repeat scroll 0 top;
	font-size:0;
	height:6px;
	line-height:0;
	margin-right:6px;
	zoom:1;
}
.z-shadow .z-shadow-tr {
	background:transparent no-repeat scroll right -6px;
	font-size:0;
	height:6px;
	line-height:0;
	margin-right:-6px;
	position:relative;
	zoom:1;
}
.z-shadow .z-shadow-bl {
	background:transparent no-repeat scroll 0 top;
	font-size:0;
	height:6px;
	line-height:0;
	margin-right:6px;
	zoom:1;
}
.z-shadow .z-shadow-br {
	background:transparent no-repeat scroll right -6px;
	font-size:0;
	height:6px;
	line-height:0;
	margin-right:-6px;
	position:relative;
	zoom:1;
}
.z-shadow .z-shadow-tl,
.z-shadow .z-shadow-tr{
	background-image:url(${c:encodeURL('~./zul/img/shadow-tlr.png')});
}

.z-shadow .z-shadow-bl,
.z-shadow .z-shadow-br{
	background-image:url(${c:encodeURL('~./zul/img/shadow-blr.png')});
}

<%-- Drag-Drop --%>
.z-dragged {
	background: #E0EAF0; color: #888;
}
.z-drag-over {
	background: #ADD2FF;
}
span.z-drop-allow, span.z-drop-disallow {
	background-repeat: no-repeat;
	vertical-align: top;
	display: -moz-inline-box;
	display: inline-block;
	width: 16px;
	min-height: 16px;
	height: 16px;
}
span.z-drop-allow {
	background: transparent no-repeat 0 -64px;
	background-image: url(${c:encodeURL('~./zul/img/misc/drag.png')});
}
span.z-drop-disallow {
	background: transparent no-repeat 0 -80px;
	background-image: url(${c:encodeURL('~./zul/img/misc/drag.png')});
}
div.z-drop-ghost {
	border:1px solid #6699CE;
}
div.z-drop-cnt {
	width: 120px;
	height: 18px;
	background-image: url(${c:encodeURL('~./zul/img/misc/drop-bg.gif')});
	padding: 2px;
	font-size: ${fontSizeM};
	font-weight: normal;
	font-family: ${fontFamilyC};
}
<%-- ZK Fileupload --%>
.z-fileupload-img {
	width: 16px;
	padding-top: 4px;
}
.z-fileupload-add {
	cursor: pointer;
	background: transparent no-repeat 0 -23px;
	background-image: url(${c:encodeURL('~./zul/img/misc/fileupload.gif')});
	width: 16px;
	height: 17px;
}
.z-fileupload-delete {
	cursor: pointer;
	background: transparent no-repeat 0 0;
	background-image: url(${c:encodeURL('~./zul/img/misc/fileupload.gif')});
	width: 16px;
	height: 17px;
}
<%-- ZK Massagebox --%>
.z-msgbox{
	display: -moz-inline-box;
	display: inline-block;
	background-repeat: no-repeat;
	vertical-align: top;
	cursor: pointer;
	border: 0;
	width: 32px;
	height: 32px;
}
.z-msgbox-question {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/question-btn.png')});
}
.z-msgbox-exclamation {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/warning-btn.png')});
}
.z-msgbox-imformation {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/info-btn.png')});
}
.z-msgbox-error {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/stop-btn.png')});
}

<%-- Progressmeter --%>
div.z-progressmeter {
	background: #E0E8F3 repeat-x scroll 0 0 ;
	background-image: url(${c:encodeURL('~./zk/img/prgmeter_bg.png')});
	border:1px solid #6F9CDB;
	text-align: left;
	height: 17px;
}
span.z-progressmeter-img {
	display: -moz-inline-box;
	display: inline-block;
	background: #A4C6F2 repeat-x scroll left center;
	background-image: url(${c:encodeURL('~./zk/img/prgmeter.png')});
	height: 17px;
	line-height: 0;
	font-size: 0;
}
<%-- Auxheader --%>
.z-auxheader-cnt {
	font-size: ${fontSizeM}; font-weight: normal;
	font-family: ${fontFamilyT};
	border: 0; margin: 0; padding: 0; overflow: hidden;
}
.z-word-wrap .z-auxheader-cnt {
	word-wrap: break-word;
}
<%-- Grid --%>
<c:include page="~./zul/css/cmps/grid.css.dsp"/>
<%-- Listbox --%>
<c:include page="~./zul/css/cmps/listbox.css.dsp"/>
<%-- Tree --%>
<c:include page="~./zul/css/cmps/tree.css.dsp"/>
<%-- Tabbox --%>
<c:include page="~./zul/css/cmps/tabbox.css.dsp"/>
<%-- Borderlayout --%>
<c:include page="~./zul/css/cmps/layout.css.dsp"/>
<%-- Fileupload --%>
<c:include page="~./zul/css/cmps/fileupload.css.dsp"/>

<%-- IE --%>
<c:if test="${c:isExplorer()}">
<c:choose>
<c:when  test="${!empty c:property('org.zkoss.zul.theme.enableZKPrefix')}">
.zk img	{
	hspace: 0; vspace: 0
}
.zk option {
	font-family: ${fontFamilyC};
	font-size: ${fontSizeXS}; font-weight: normal;
}
</c:when>
<c:otherwise>
img	{
	hspace: 0; vspace: 0
}
option {
	font-family: ${fontFamilyC};
	font-size: ${fontSizeXS}; font-weight: normal;
}
</c:otherwise>
</c:choose>

<%-- shadow, tree.css.dsp, listbox.css.dsp, and grid.css.dsp --%>
<c:if test="${c:browser('ie6-')}">
.z-shadow {
	background: #888; zoom: 1; display: none;
	filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius=4, MakeShadow=true, ShadowOpacity=0.30)
}

div.z-listbox, div.z-tree, div.z-dottree, div.z-filetree, div.z-vfiletree, div.z-grid {
	position:relative; <%-- Bug 1914215 and Bug 1914054 --%>
}
</c:if>
div.z-tree-header, div.z-dottree-header, div.z-filetree-header, div.z-vfiletree-header,
div.z-listbox-header, div.z-grid-header, div.z-tree-footer, div.z-listbox-footer,
	div.z-grid-footer {<%-- always used. --%>
	position:relative;
	<%-- Bug 1712708 and 1926094:  we have to specify position:relative --%>
}
div.z-tree-header th.z-treecol, div.z-tree-header th.z-auxheader,
div.z-dottree-header th.z-treecol, div.z-dottree-header th.z-auxheader,
div.z-filetree-header th.z-treecol, div.z-filetree-header th.z-auxheader,
div.z-vfiletree-header th.z-treecol, div.z-vfiletree-header th.z-auxheader,
div.z-listbox-header th.z-listheader, div.z-listbox-header th.z-auxheader,
div.z-grid-header th.z-column, div.z-grid-header th.z-auxheader {
	text-overflow: ellipsis;
}
div.z-treecol-cnt, div.z-dottreecol-cnt, div.z-filetreecol-cnt, div.z-vfiletreecol-cnt,
div.z-listheader-cnt, div.z-column-cnt, .z-auxheader-cnt {
	white-space: nowrap;
	<%-- Bug #1839960  --%>
}
div.z-footer-cnt, div.z-row-cnt, div.z-group-cnt, div.z-groupfoot-cnt, div.z-column-cnt,
div.z-treefooter-cnt, div.z-treecell-cnt, div.z-treecol-cnt,
div.z-dottreefooter-cnt, div.z-dottreecell-cnt, div.z-dottreecol-cnt,
div.z-filetreefooter-cnt, div.z-filetreecell-cnt, div.z-filetreecol-cnt,
div.z-vfiletreefooter-cnt, div.z-vfiletreecell-cnt, div.z-vfiletreecol-cnt,
.z-auxheader-cnt, div.z-listfooter-cnt, div.z-listcell-cnt, div.z-listheader-cnt {
	position: relative;
	<%-- Bug #1825896  --%>
}
div.z-row-cnt, div.z-group-cnt, div.z-groupfoot-cnt,div.z-listcell-cnt,
div.z-treecell-cnt, div.z-dottreecell-cnt, div.z-filetreecell-cnt, div.z-vfiletreecell-cnt {
	width: 100%;
}
div.z-tree-body, div.z-dottree-body, div.z-filetree-body, div.z-vfiletree-body, div.z-listbox-body, div.z-grid-body {<%-- always used. --%>
	position: relative;
	<%-- Bug 1766244: we have to specify position:relative with overflow:auto --%>
}
tr.z-grid-faker, tr.z-listbox-faker, tr.z-tree-faker, tr.z-dottree-faker, tr.z-filetree-faker, tr.z-vfiletree-faker {
	position: absolute; top: -1000px; left: -1000px;<%-- fixed a white line for IE --%>
}
span.z-tree-root-open, span.z-tree-root-close, span.z-tree-tee-open, span.z-tree-tee-close,
span.z-tree-last-open, span.z-tree-last-close, span.z-tree-tee, span.z-tree-vbar, span.z-tree-last, span.z-tree-spacer,
span.z-dottree-root-open, span.z-dottree-root-close, span.z-dottree-tee-open, span.z-dottree-tee-close,
span.z-dottree-last-open, span.z-dottree-last-close, span.z-dottree-tee, span.z-dottree-vbar, span.z-dottree-last, span.z-dottree-spacer,
span.z-filetree-root-open, span.z-filetree-root-close, span.z-filetree-tee-open, span.z-filetree-tee-close,
span.z-filetree-last-open, span.z-filetree-last-close, span.z-filetree-tee, span.z-filetree-vbar, span.z-filetree-last, span.z-filetree-spacer,
span.z-vfiletree-root-open, span.z-vfiletree-root-close, span.z-vfiletree-tee-open, span.z-vfiletree-tee-close,
span.z-vfiletree-last-open, span.z-vfiletree-last-close, span.z-vfiletree-tee, span.z-vfiletree-vbar, span.z-vfiletree-last, span.z-vfiletree-spacer {
	height: 18px;
}

<%-- IE 6 GIF  --%>
<c:if test="${c:browser('ie6-')}">
span.z-drop-allow,
span.z-drop-disallow {
	background-image: url(${c:encodeURL('~./zul/img/misc/drag.gif')});
}
.z-msgbox-question {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/question-btn.gif')});
}
.z-msgbox-exclamation {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/warning-btn.gif')});
}
.z-msgbox-imformation {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/info-btn.gif')});
}
.z-msgbox-error {
	background-image: url(${c:encodeURL('~./zul/img/msgbox/stop-btn.gif')});
}
<%-- grid.css.dsp --%>
.z-columns-menu-grouping .z-menu-item-img {
	background-image:  url(${c:encodeURL('~./zul/img/grid/menu-group.gif')});
}
.z-columns-menu-asc .z-menu-item-img {
	background-image:  url(${c:encodeURL('~./zul/img/grid/menu-arrowup.gif')});
}
.z-columns-menu-dsc .z-menu-item-img {
	background-image:  url(${c:encodeURL('~./zul/img/grid/menu-arrowdown.gif')});
}
<%-- listbox.css.dsp --%>
tr.z-listitem td.z-listitem-focus {
	background-image: url(${c:encodeURL('~./zul/img/common/focusd.gif')});
}

<%-- tabbox.css.dsp --%>
.z-tab-hl,
.z-tab-hr {
	background-image: url(${c:encodeURL('~./zul/img/tab/tab-corner.gif')});
}
.z-tab-hm {
	background-image: url(${c:encodeURL('~./zul/img/tab/tab-hm.gif')});
}
.z-tab-ver-hl,
.z-tab-ver-hl .z-tab-ver-hr {
	background-image: url(${c:encodeURL('~./zul/img/tab/tab-v-corner.gif')});
}
.z-tab-ver .z-tab-ver-hm {
	background-image: url(${c:encodeURL('~./zul/img/tab/tab-v-hm.png')});
}
.z-tab-accordion-tl,
.z-tab-accordion-tr {
	background-image: url(${c:encodeURL('~./zul/img/tab/accd-corner.gif')});
}
<%-- tree.css.dsp --%>
tr.z-treerow td.z-treerow-focus {
	background-image: url(${c:encodeURL('~./zul/img/common/focusd.gif')});
}
span.z-vfiletree-ico,span.z-vfiletree-firstspacer {
	background-image: url(${c:encodeURL('~./zul/img/tree/vfolder-toggle.gif')});
}
span.z-vfiletree-tee, span.z-vfiletree-last {
	background-image: url(${c:encodeURL('~./zul/img/tree/ventity.gif')});
}
</c:if>
</c:if>

<%-- Gecko --%>
<c:if test="${c:isGecko()}">
<%-- tree.css.dsp, grid.css.dsp, and listbox.css.dsp --%>
.z-word-wrap div.z-treecell-cnt, .z-word-wrap div.z-treefooter-cnt, 
.z-word-wrap div.z-treecol-cnt,
.z-word-wrap div.z-row-cnt, 
.z-word-wrap div.z-group-cnt,
.z-word-wrap div.z-groupfoot-cnt,
.z-word-wrap div.z-footer-cnt, .z-word-wrap div.z-column-cnt,
.z-word-wrap div.z-listcell-cnt, .z-word-wrap div.z-listfooter-cnt,
.z-word-wrap div.z-listheader-cnt {
	overflow: hidden;
	-moz-binding: url(${c:encodeURL('~./zk/wordwrap.xml#wordwrap')});
}
span.z-word-wrap {<%-- label use only --%>
	display: block;
}
</c:if>

<%-- Opera --%>
<c:if test="${c:isOpera()}">
option {
	font-family: ${fontFamilyC};
	font-size: ${fontSizeXS}; font-weight: normal;
}
</c:if>
