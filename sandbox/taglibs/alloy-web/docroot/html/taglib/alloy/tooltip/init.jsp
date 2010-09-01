<%@ include file="/html/taglib/alloy/init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:tooltip:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:tooltip:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

java.lang.Object _boundingBox = (java.lang.Object)request.getAttribute("alloy:tooltip:boundingBox");
java.lang.Object _contentBox = (java.lang.Object)request.getAttribute("alloy:tooltip:contentBox");
java.lang.Object _srcNode = (java.lang.Object)request.getAttribute("alloy:tooltip:srcNode");

boolean hasBoundingBox = GetterUtil.getBoolean(String.valueOf(_boundingBox));
boolean hasContentBox = GetterUtil.getBoolean(String.valueOf(_contentBox));
boolean hasSrcNode = GetterUtil.getBoolean(String.valueOf(_srcNode));

java.util.HashMap _align = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:align"), "{ node: null, points: [ BL, TR ] }"));
java.util.HashMap _anim = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:anim"), "{ show: false }"));
java.lang.String _arrow = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tooltip:arrow"));
java.lang.Object _tooltipBodyContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:tooltipBodyContent"));
java.lang.Boolean _cancellableHide = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:cancellableHide"), true);
java.lang.Object _centered = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:centered"), false);
java.lang.Object _constrain = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:constrain"));
java.lang.String _cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tooltip:cssClass"));
java.lang.Object _currentNode = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:currentNode"));
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:destroyed"), false);
java.lang.Boolean _disabled = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:disabled"), false);
java.lang.Object _fillHeight = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:fillHeight"));
java.lang.Boolean _focused = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:focused"), false);
java.lang.Object _footerContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:footerContent"));
java.lang.Object _headerContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:headerContent"));
java.lang.Object _height = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:height"));
java.lang.String _hideClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tooltip:hideClass"), "aui-helper-hidden");
java.lang.Number _hideDelay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:tooltip:hideDelay")), 500);
java.lang.String _hideOn = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tooltip:hideOn"), "mouseout");
java.lang.Boolean _hideOnDocumentClick = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:hideOnDocumentClick"), true);
java.lang.String _tooltipId = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tooltip:tooltipId"));
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:initialized"), false);
java.lang.Boolean _preventOverlap = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:preventOverlap"), false);
java.lang.Boolean _render = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:render"), false);
java.lang.Boolean _rendered = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:rendered"), false);
java.lang.Boolean _shim = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:shim"), false);
java.lang.Boolean _showArrow = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:showArrow"), true);
java.lang.Number _showDelay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:tooltip:showDelay")), 0);
java.lang.String _showOn = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:tooltip:showOn"), "mouseover");
java.lang.Boolean _stack = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:stack"), true);
java.util.HashMap _strings = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:strings")));
java.lang.Number _tabIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:tooltip:tabIndex")), 0);
java.lang.Boolean _title = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:title"), false);
java.lang.Object _trigger = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:trigger"));
java.lang.Boolean _visible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:tooltip:visible"), false);
java.lang.Object _width = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:width"));
java.lang.Number _x = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:tooltip:x")), 0);
java.util.ArrayList _xy = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:xy"), "[0,0]"));
java.lang.Number _y = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:tooltip:y")), 0);
java.lang.Number _zIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:tooltip:zIndex")), 0);
java.lang.Object _afterAlignChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterAlignChange"));
java.lang.Object _afterAnimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterAnimChange"));
java.lang.Object _afterArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterArrowChange"));
java.lang.Object _afterBodyContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterBodyContentChange"));
java.lang.Object _afterBoundingBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterBoundingBoxChange"));
java.lang.Object _afterCancellableHideChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterCancellableHideChange"));
java.lang.Object _afterCenteredChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterCenteredChange"));
java.lang.Object _afterConstrainChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterConstrainChange"));
java.lang.Object _afterContentBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterContentBoxChange"));
java.lang.Object _afterCssClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterCssClassChange"));
java.lang.Object _afterCurrentNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterCurrentNodeChange"));
java.lang.Object _afterDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterDestroy"));
java.lang.Object _afterDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterDestroyedChange"));
java.lang.Object _afterDisabledChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterDisabledChange"));
java.lang.Object _afterFillHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterFillHeightChange"));
java.lang.Object _afterFocusedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterFocusedChange"));
java.lang.Object _afterFooterContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterFooterContentChange"));
java.lang.Object _afterHeaderContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterHeaderContentChange"));
java.lang.Object _afterHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterHeightChange"));
java.lang.Object _afterHideClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterHideClassChange"));
java.lang.Object _afterHideDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterHideDelayChange"));
java.lang.Object _afterHideOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterHideOnChange"));
java.lang.Object _afterHideOnDocumentClickChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterHideOnDocumentClickChange"));
java.lang.Object _afterIdChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterIdChange"));
java.lang.Object _afterInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterInit"));
java.lang.Object _afterInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterInitializedChange"));
java.lang.Object _afterPreventOverlapChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterPreventOverlapChange"));
java.lang.Object _afterRenderChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterRenderChange"));
java.lang.Object _afterRenderedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterRenderedChange"));
java.lang.Object _afterShimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterShimChange"));
java.lang.Object _afterShowArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterShowArrowChange"));
java.lang.Object _afterShowDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterShowDelayChange"));
java.lang.Object _afterShowOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterShowOnChange"));
java.lang.Object _afterSrcNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterSrcNodeChange"));
java.lang.Object _afterStackChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterStackChange"));
java.lang.Object _afterStringsChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterStringsChange"));
java.lang.Object _afterTabIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterTabIndexChange"));
java.lang.Object _afterTitleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterTitleChange"));
java.lang.Object _afterTriggerChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterTriggerChange"));
java.lang.Object _afterVisibleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterVisibleChange"));
java.lang.Object _afterContentUpdate = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterContentUpdate"));
java.lang.Object _afterRender = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterRender"));
java.lang.Object _afterWidthChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterWidthChange"));
java.lang.Object _afterXChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterXChange"));
java.lang.Object _afterXyChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterXyChange"));
java.lang.Object _afterYChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterYChange"));
java.lang.Object _afterZIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:afterZIndexChange"));
java.lang.Object _onAlignChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onAlignChange"));
java.lang.Object _onAnimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onAnimChange"));
java.lang.Object _onArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onArrowChange"));
java.lang.Object _onBodyContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onBodyContentChange"));
java.lang.Object _onBoundingBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onBoundingBoxChange"));
java.lang.Object _onCancellableHideChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onCancellableHideChange"));
java.lang.Object _onCenteredChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onCenteredChange"));
java.lang.Object _onConstrainChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onConstrainChange"));
java.lang.Object _onContentBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onContentBoxChange"));
java.lang.Object _onCssClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onCssClassChange"));
java.lang.Object _onCurrentNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onCurrentNodeChange"));
java.lang.Object _onDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onDestroy"));
java.lang.Object _onDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onDestroyedChange"));
java.lang.Object _onDisabledChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onDisabledChange"));
java.lang.Object _onFillHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onFillHeightChange"));
java.lang.Object _onFocusedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onFocusedChange"));
java.lang.Object _onFooterContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onFooterContentChange"));
java.lang.Object _onHeaderContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onHeaderContentChange"));
java.lang.Object _onHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onHeightChange"));
java.lang.Object _onHideClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onHideClassChange"));
java.lang.Object _onHideDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onHideDelayChange"));
java.lang.Object _onHideOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onHideOnChange"));
java.lang.Object _onHideOnDocumentClickChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onHideOnDocumentClickChange"));
java.lang.Object _onIdChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onIdChange"));
java.lang.Object _onInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onInit"));
java.lang.Object _onInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onInitializedChange"));
java.lang.Object _onPreventOverlapChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onPreventOverlapChange"));
java.lang.Object _onRenderChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onRenderChange"));
java.lang.Object _onRenderedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onRenderedChange"));
java.lang.Object _onShimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onShimChange"));
java.lang.Object _onShowArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onShowArrowChange"));
java.lang.Object _onShowDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onShowDelayChange"));
java.lang.Object _onShowOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onShowOnChange"));
java.lang.Object _onSrcNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onSrcNodeChange"));
java.lang.Object _onStackChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onStackChange"));
java.lang.Object _onStringsChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onStringsChange"));
java.lang.Object _onTabIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onTabIndexChange"));
java.lang.Object _onTitleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onTitleChange"));
java.lang.Object _onTriggerChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onTriggerChange"));
java.lang.Object _onVisibleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onVisibleChange"));
java.lang.Object _onContentUpdate = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onContentUpdate"));
java.lang.Object _onRender = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onRender"));
java.lang.Object _onWidthChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onWidthChange"));
java.lang.Object _onXChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onXChange"));
java.lang.Object _onXyChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onXyChange"));
java.lang.Object _onYChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onYChange"));
java.lang.Object _onZIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:tooltip:onZIndexChange"));

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

_updateOptions(options, "align", _align);
_updateOptions(options, "anim", _anim);
_updateOptions(options, "arrow", _arrow);
_updateOptions(options, "tooltipBodyContent", _tooltipBodyContent);
_updateOptions(options, "boundingBox", _boundingBox);
_updateOptions(options, "cancellableHide", _cancellableHide);
_updateOptions(options, "centered", _centered);
_updateOptions(options, "constrain", _constrain);
_updateOptions(options, "contentBox", _contentBox);
_updateOptions(options, "cssClass", _cssClass);
_updateOptions(options, "currentNode", _currentNode);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "disabled", _disabled);
_updateOptions(options, "fillHeight", _fillHeight);
_updateOptions(options, "focused", _focused);
_updateOptions(options, "footerContent", _footerContent);
_updateOptions(options, "headerContent", _headerContent);
_updateOptions(options, "height", _height);
_updateOptions(options, "hideClass", _hideClass);
_updateOptions(options, "hideDelay", _hideDelay);
_updateOptions(options, "hideOn", _hideOn);
_updateOptions(options, "hideOnDocumentClick", _hideOnDocumentClick);
_updateOptions(options, "tooltipId", _tooltipId);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "preventOverlap", _preventOverlap);
_updateOptions(options, "render", _render);
_updateOptions(options, "rendered", _rendered);
_updateOptions(options, "shim", _shim);
_updateOptions(options, "showArrow", _showArrow);
_updateOptions(options, "showDelay", _showDelay);
_updateOptions(options, "showOn", _showOn);
_updateOptions(options, "srcNode", _srcNode);
_updateOptions(options, "stack", _stack);
_updateOptions(options, "strings", _strings);
_updateOptions(options, "tabIndex", _tabIndex);
_updateOptions(options, "title", _title);
_updateOptions(options, "trigger", _trigger);
_updateOptions(options, "visible", _visible);
_updateOptions(options, "width", _width);
_updateOptions(options, "x", _x);
_updateOptions(options, "xy", _xy);
_updateOptions(options, "y", _y);
_updateOptions(options, "zIndex", _zIndex);
_updateOptions(options, "afterAlignChange", _afterAlignChange);
_updateOptions(options, "afterAnimChange", _afterAnimChange);
_updateOptions(options, "afterArrowChange", _afterArrowChange);
_updateOptions(options, "afterBodyContentChange", _afterBodyContentChange);
_updateOptions(options, "afterBoundingBoxChange", _afterBoundingBoxChange);
_updateOptions(options, "afterCancellableHideChange", _afterCancellableHideChange);
_updateOptions(options, "afterCenteredChange", _afterCenteredChange);
_updateOptions(options, "afterConstrainChange", _afterConstrainChange);
_updateOptions(options, "afterContentBoxChange", _afterContentBoxChange);
_updateOptions(options, "afterCssClassChange", _afterCssClassChange);
_updateOptions(options, "afterCurrentNodeChange", _afterCurrentNodeChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterDisabledChange", _afterDisabledChange);
_updateOptions(options, "afterFillHeightChange", _afterFillHeightChange);
_updateOptions(options, "afterFocusedChange", _afterFocusedChange);
_updateOptions(options, "afterFooterContentChange", _afterFooterContentChange);
_updateOptions(options, "afterHeaderContentChange", _afterHeaderContentChange);
_updateOptions(options, "afterHeightChange", _afterHeightChange);
_updateOptions(options, "afterHideClassChange", _afterHideClassChange);
_updateOptions(options, "afterHideDelayChange", _afterHideDelayChange);
_updateOptions(options, "afterHideOnChange", _afterHideOnChange);
_updateOptions(options, "afterHideOnDocumentClickChange", _afterHideOnDocumentClickChange);
_updateOptions(options, "afterIdChange", _afterIdChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterPreventOverlapChange", _afterPreventOverlapChange);
_updateOptions(options, "afterRenderChange", _afterRenderChange);
_updateOptions(options, "afterRenderedChange", _afterRenderedChange);
_updateOptions(options, "afterShimChange", _afterShimChange);
_updateOptions(options, "afterShowArrowChange", _afterShowArrowChange);
_updateOptions(options, "afterShowDelayChange", _afterShowDelayChange);
_updateOptions(options, "afterShowOnChange", _afterShowOnChange);
_updateOptions(options, "afterSrcNodeChange", _afterSrcNodeChange);
_updateOptions(options, "afterStackChange", _afterStackChange);
_updateOptions(options, "afterStringsChange", _afterStringsChange);
_updateOptions(options, "afterTabIndexChange", _afterTabIndexChange);
_updateOptions(options, "afterTitleChange", _afterTitleChange);
_updateOptions(options, "afterTriggerChange", _afterTriggerChange);
_updateOptions(options, "afterVisibleChange", _afterVisibleChange);
_updateOptions(options, "afterContentUpdate", _afterContentUpdate);
_updateOptions(options, "afterRender", _afterRender);
_updateOptions(options, "afterWidthChange", _afterWidthChange);
_updateOptions(options, "afterXChange", _afterXChange);
_updateOptions(options, "afterXyChange", _afterXyChange);
_updateOptions(options, "afterYChange", _afterYChange);
_updateOptions(options, "afterZIndexChange", _afterZIndexChange);
_updateOptions(options, "onAlignChange", _onAlignChange);
_updateOptions(options, "onAnimChange", _onAnimChange);
_updateOptions(options, "onArrowChange", _onArrowChange);
_updateOptions(options, "onBodyContentChange", _onBodyContentChange);
_updateOptions(options, "onBoundingBoxChange", _onBoundingBoxChange);
_updateOptions(options, "onCancellableHideChange", _onCancellableHideChange);
_updateOptions(options, "onCenteredChange", _onCenteredChange);
_updateOptions(options, "onConstrainChange", _onConstrainChange);
_updateOptions(options, "onContentBoxChange", _onContentBoxChange);
_updateOptions(options, "onCssClassChange", _onCssClassChange);
_updateOptions(options, "onCurrentNodeChange", _onCurrentNodeChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onDisabledChange", _onDisabledChange);
_updateOptions(options, "onFillHeightChange", _onFillHeightChange);
_updateOptions(options, "onFocusedChange", _onFocusedChange);
_updateOptions(options, "onFooterContentChange", _onFooterContentChange);
_updateOptions(options, "onHeaderContentChange", _onHeaderContentChange);
_updateOptions(options, "onHeightChange", _onHeightChange);
_updateOptions(options, "onHideClassChange", _onHideClassChange);
_updateOptions(options, "onHideDelayChange", _onHideDelayChange);
_updateOptions(options, "onHideOnChange", _onHideOnChange);
_updateOptions(options, "onHideOnDocumentClickChange", _onHideOnDocumentClickChange);
_updateOptions(options, "onIdChange", _onIdChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onPreventOverlapChange", _onPreventOverlapChange);
_updateOptions(options, "onRenderChange", _onRenderChange);
_updateOptions(options, "onRenderedChange", _onRenderedChange);
_updateOptions(options, "onShimChange", _onShimChange);
_updateOptions(options, "onShowArrowChange", _onShowArrowChange);
_updateOptions(options, "onShowDelayChange", _onShowDelayChange);
_updateOptions(options, "onShowOnChange", _onShowOnChange);
_updateOptions(options, "onSrcNodeChange", _onSrcNodeChange);
_updateOptions(options, "onStackChange", _onStackChange);
_updateOptions(options, "onStringsChange", _onStringsChange);
_updateOptions(options, "onTabIndexChange", _onTabIndexChange);
_updateOptions(options, "onTitleChange", _onTitleChange);
_updateOptions(options, "onTriggerChange", _onTriggerChange);
_updateOptions(options, "onVisibleChange", _onVisibleChange);
_updateOptions(options, "onContentUpdate", _onContentUpdate);
_updateOptions(options, "onRender", _onRender);
_updateOptions(options, "onWidthChange", _onWidthChange);
_updateOptions(options, "onXChange", _onXChange);
_updateOptions(options, "onXyChange", _onXyChange);
_updateOptions(options, "onYChange", _onYChange);
_updateOptions(options, "onZIndexChange", _onZIndexChange);
%>

<%@ include file="init-ext.jsp" %>