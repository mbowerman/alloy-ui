AUI.add("aui-scheduler-view-month",function(o){var f=o.Lang,a=f.isFunction,c=o.DataType.DateMath,r=".",h="col",g="data",d="date",v="firstDayOfWeek",e="locale",m="month",w="nomonth",i="scheduler",j="table",u="tableRowContainer",n="title",q="viewDate",p="scheduler-view",l="scheduler-view-month",t=o.getClassName,s=t(l,j,g,h,w),k=t(p,j,g,h,n);var b=o.Component.create({NAME:l,ATTRS:{displayDaysInterval:{readOnly:true,value:42},name:{value:m},navigationDateFormatter:{value:function(y){var x=this;var z=x.get(i);return o.DataType.Date.format(y,{format:"%B %Y",locale:z.get(e)});},validator:a}},EXTENDS:o.SchedulerTableView,prototype:{getAdjustedViewDate:function(y){var x=this;return c.findMonthStart(y);},getNextDate:function(){var x=this;var y=x.get(i);var z=y.get(q);return c.add(z,c.MONTH,1);},getPrevDate:function(){var x=this;var y=x.get(i);var z=y.get(q);return c.subtract(z,c.MONTH,1);},plotEvents:function(){var x=this;o.SchedulerMonthView.superclass.plotEvents.apply(x,arguments);var y=x.get(i);var C=y.get(q);var B=c.findMonthEnd(C);var A=c.findMonthStart(C);var z=x._findCurrentIntervalStart();var D=x[u].all(r+k);D.each(function(G,E){var F=c.add(z,c.DAY,E);if(c.before(F,A)||c.after(F,B)){G.addClass(s);}});},_findCurrentIntervalStart:function(){var x=this;var y=x.get(i);var z=y.get(q);return x._findFirstDayOfWeek(z);},_findFirstDayOfWeek:function(z){var x=this;var A=x.get(i);var y=A.get(v);return c.getFirstDayOfWeek(z,y);}}});o.SchedulerMonthView=b;},"@VERSION@",{skinnable:true,requires:["aui-scheduler-view-table"]});