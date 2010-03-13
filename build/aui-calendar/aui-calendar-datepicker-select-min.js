AUI.add("aui-calendar-datepicker-select",function(T){var N=T.Lang,f=N.isArray,a=function(A){return T.get(A);},F=function(){return T.Node.create(t);},G="appendOrder",r="baseName",Y="",y="body",AB="button",z="calendar",E="clearfix",s="currentDay",i="currentMonth",m="currentYear",R="datepicker",v="dateFormat",AF="day",n="dayField",k="dayFieldName",C="display",M="displayBoundingBox",c=".",w="helper",AA="maxDate",u="minDate",J="month",W="monthField",S="monthFieldName",p="name",U="option",AE="populateDay",X="populateMonth",AG="populateYear",Z="select",j="selected",H="trigger",AD="wrapper",d="year",g="yearField",AC="yearFieldName",h="yearRange",I=T.ClassNameManager.getClassName,l=I(R),b=I(R,AB,AD),e=I(R,AF),o=I(R,C),D=I(R,J),x=I(R,Z,AD),P=I(R,d),K=I(w,E),t="<select></select>",Q="<option></option>",V="<div></div>",B='<div class="'+b+'"></div>',O="<div class="+x+"></div>";function q(A){q.superclass.constructor.apply(this,arguments);}T.mix(q,{NAME:R,ATTRS:{appendOrder:{value:["m","d","y"],validator:f},baseName:{value:R},displayBoundingBox:{value:null,setter:a},dayField:{setter:a,valueFn:F},monthField:{setter:a,valueFn:F},yearField:{setter:a,valueFn:F},dayFieldName:{value:AF},monthFieldName:{value:J},yearFieldName:{value:d},trigger:{valueFn:function(){return T.Node.create(B).cloneNode();}},visible:{value:false},yearRange:{valueFn:function(){var A=new Date().getFullYear();return[A-10,A+10];},validator:f},setValue:{value:false},populateDay:{value:true},populateMonth:{value:true},populateYear:{value:true}}});T.extend(q,T.Calendar,{renderUI:function(){var A=this;q.superclass.renderUI.apply(this,arguments);A._renderElements();A._renderTriggerButton();},bindUI:function(){var A=this;q.superclass.bindUI.apply(this,arguments);A.after("datesChange",T.bind(A._selectCurrentValues,A));A.after("currentMonthChange",T.bind(A._afterSetCurrentMonth,A));A._bindSelectEvents();},syncUI:function(){var A=this;q.superclass.syncUI.apply(this,arguments);A._pupulateSelects();A._selectCurrentValues();},_getAppendOrder:function(){var L=this;var AI=L.get(G);var AJ={d:L.get(n),m:L.get(W),y:L.get(g)};var AK=AJ[AI[0]];var A=AJ[AI[1]];var AH=AJ[AI[2]];return[AK,A,AH];},_renderElements:function(){var L=this;var AJ=L.get(M);if(!AJ){AJ=T.Node.create(V);L.set(M,AJ);T.get(y).append(AJ);}var AK=L.get(n);var AH=L.get(W);var A=L.get(g);AK.addClass(e);AH.addClass(D);A.addClass(P);AJ.addClass(l);AJ.addClass(o);AJ.addClass(K);L._selectWrapper=T.Node.create(O);AH.set(p,L.get(S));A.set(p,L.get(AC));AK.set(p,L.get(k));var AI=L._getAppendOrder();L._selectWrapper.append(AI[0]);L._selectWrapper.append(AI[1]);L._selectWrapper.append(AI[2]);AJ.append(L._selectWrapper);},_renderTriggerButton:function(){var A=this;var L=A.get(H).item(0);var AH=A.get(M);A._buttonItem=new T.ToolItem(z);AH.append(L);if(L.test(c+b)){A._buttonItem.render(L);}},_bindSelectEvents:function(){var A=this;var L=A._selectWrapper.all(Z);L.on("change",T.bind(A._onSelectChange,A));L.on("keypress",T.bind(A._onSelectChange,A));},_selectCurrentValues:function(){var A=this;A._selectCurrentDay();A._selectCurrentMonth();A._selectCurrentYear();},_selectCurrentDay:function(){var A=this;var L=A.getCurrentDate();A.get(n).val(L.getDate());},_selectCurrentMonth:function(){var A=this;var L=A.getCurrentDate();A.get(W).val(L.getMonth());},_selectCurrentYear:function(){var A=this;var L=A.getCurrentDate();A.get(g).val(L.getFullYear());},_pupulateSelects:function(){var AP=this;AP._populateDays();AP._populateMonths();AP._populateYears();var AO=AP.get(W).all(U);var AQ=AP.get(g).all(U);var AM=AO.size()-1;var L=AQ.size()-1;var AH=AO.item(0).val();var AK=AQ.item(0).val();var AN=AO.item(AM).val();var AL=AQ.item(L).val();var AI=AP.getDaysInMonth(AL,AN);var AJ=new Date(AK,AH,1);var A=new Date(AL,AN,AI);AP.set(AA,A);AP.set(u,AJ);},_populateYears:function(){var L=this;var AH=L.get(h);var A=L.get(g);if(L.get(AG)){L._populateSelect(A,AH[0],AH[1]);}},_populateMonths:function(){var L=this;var AH=L.get(W);var A=L._getLocaleMap();var AI=A.B;if(L.get(X)){L._populateSelect(AH,0,(AI.length-1),AI);}},_populateDays:function(){var A=this;var AH=A.get(n);var L=A.getDaysInMonth();if(A.get(AE)){A._populateSelect(AH,1,L);}},_populateSelect:function(AL,AK,A,AH,AN){var L=0;var AI=AK;var AO=this;AL.empty();AH=AH||[];AN=AN||[];while(AI<=A){var AM=AN[AI]||AI;var AJ=AH[AI]||AI;T.Node.getDOMNode(AL).options[L]=new Option(AJ,AI);L++;AI++;}},_onSelectChange:function(AJ){var A=this;var AL=AJ.currentTarget||AJ.target;var AH=AL.test(c+D);var AK=A.get(n).val();var AI=A.get(W).val();var L=A.get(g).val();A.set(s,AK);A.set(i,AI);A.set(m,L);if(AH){A._afterSetCurrentMonth();}A._selectDate();},_afterSetCurrentMonth:function(L){var A=this;A._populateDays();A._selectCurrentDay();}});T.DatePickerSelect=q;},"@VERSION@",{requires:["aui-calendar-base","aui-tool-item"],skinnable:true});