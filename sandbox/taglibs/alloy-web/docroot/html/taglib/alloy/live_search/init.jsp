<%@ include file="/html/taglib/alloy/init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:live-search:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:live-search:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

java.lang.Object _boundingBox = (java.lang.Object)request.getAttribute("alloy:live-search:boundingBox");
java.lang.Object _contentBox = (java.lang.Object)request.getAttribute("alloy:live-search:contentBox");
java.lang.Object _srcNode = (java.lang.Object)request.getAttribute("alloy:live-search:srcNode");

boolean hasBoundingBox = GetterUtil.getBoolean(String.valueOf(_boundingBox));
boolean hasContentBox = GetterUtil.getBoolean(String.valueOf(_contentBox));
boolean hasSrcNode = GetterUtil.getBoolean(String.valueOf(_srcNode));

java.lang.Object _data = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:data"));
java.lang.Number _delay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:live-search:delay")), 250);
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:live-search:destroyed"), false);
java.lang.Object _hide = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:hide"));
java.util.ArrayList _index = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:index"), "[]"));
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:live-search:initialized"), false);
java.lang.String _input = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:live-search:input"));
java.lang.Object _matchRegex = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:matchRegex"), (.)*);
java.lang.Object _nodes = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:nodes"));
java.lang.Object _show = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:show"));
java.lang.Object _afterDataChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterDataChange"));
java.lang.Object _afterDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterDelayChange"));
java.lang.Object _afterDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterDestroy"));
java.lang.Object _afterDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterDestroyedChange"));
java.lang.Object _afterHideChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterHideChange"));
java.lang.Object _afterIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterIndexChange"));
java.lang.Object _afterInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterInit"));
java.lang.Object _afterInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterInitializedChange"));
java.lang.Object _afterInputChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterInputChange"));
java.lang.Object _afterMatchRegexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterMatchRegexChange"));
java.lang.Object _afterNodesChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterNodesChange"));
java.lang.Object _afterShowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:afterShowChange"));
java.lang.Object _onDataChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onDataChange"));
java.lang.Object _onDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onDelayChange"));
java.lang.Object _onDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onDestroy"));
java.lang.Object _onDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onDestroyedChange"));
java.lang.Object _onHideChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onHideChange"));
java.lang.Object _onIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onIndexChange"));
java.lang.Object _onInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onInit"));
java.lang.Object _onInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onInitializedChange"));
java.lang.Object _onInputChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onInputChange"));
java.lang.Object _onMatchRegexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onMatchRegexChange"));
java.lang.Object _onNodesChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onNodesChange"));
java.lang.Object _onShowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:live-search:onShowChange"));

String uniqueId = StringPool.BLANK;

boolean useJavaScript = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useJavaScript"), true);
boolean useMarkup = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useMarkup"), true);

if (useMarkup) {
	uniqueId = MarkupUtil.getUniqueId();

	String prefix = StringPool.POUND.concat(uniqueId);

	if (!hasBoundingBox) {
		_boundingBox = prefix.concat("BoundingBox");

		options.put("boundingBox", _boundingBox);
	}

	if (!hasSrcNode && !hasContentBox) {
		_srcNode = prefix.concat("SrcNode");

		options.put("srcNode", _srcNode);
	}

	if (!hasSrcNode && hasContentBox) {
		_contentBox = prefix.concat("ContentBox");

		options.put("contentBox", _contentBox);
	}
}

_updateOptions(options, "data", _data);
_updateOptions(options, "delay", _delay);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "hide", _hide);
_updateOptions(options, "index", _index);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "input", _input);
_updateOptions(options, "matchRegex", _matchRegex);
_updateOptions(options, "nodes", _nodes);
_updateOptions(options, "show", _show);
_updateOptions(options, "afterDataChange", _afterDataChange);
_updateOptions(options, "afterDelayChange", _afterDelayChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterHideChange", _afterHideChange);
_updateOptions(options, "afterIndexChange", _afterIndexChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterInputChange", _afterInputChange);
_updateOptions(options, "afterMatchRegexChange", _afterMatchRegexChange);
_updateOptions(options, "afterNodesChange", _afterNodesChange);
_updateOptions(options, "afterShowChange", _afterShowChange);
_updateOptions(options, "onDataChange", _onDataChange);
_updateOptions(options, "onDelayChange", _onDelayChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onHideChange", _onHideChange);
_updateOptions(options, "onIndexChange", _onIndexChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onInputChange", _onInputChange);
_updateOptions(options, "onMatchRegexChange", _onMatchRegexChange);
_updateOptions(options, "onNodesChange", _onNodesChange);
_updateOptions(options, "onShowChange", _onShowChange);
%>

<%@ include file="init-ext.jsp" %>