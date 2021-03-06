/* North.js

	Purpose:
		
	Description:
		
	History:
		Wed Jan  7 12:14:57     2009, Created by jumperchen

Copyright (C) 2008 Potix Corporation. All Rights Reserved.

This program is distributed under LGPL Version 2.1 in the hope that
it will be useful, but WITHOUT ANY WARRANTY.
*/
var North =
/**
 * A north region of a border layout.
 * <p>Default {@link #getZclass}: z-north.
 */
zul.layout.North = zk.$extends(_zkf = zul.layout.LayoutRegion, {
	_sumFlexHeight: true, //indicate shall add this flex height for borderlayout. @See _fixMinFlex in widget.js
	/**
	 * The width can't be specified in this component because its width is
	 * determined by other region components ({@link West} or {@link East}).
	 * @param String width
	 */
	setWidth: zk.$void, // readonly
	sanchor: 't',

	$init: function () {
		this.$supers('$init', arguments);
		this._cmargins = [3, 0, 0, 3];
	},
	/**
	 * Returns {@link Borderlayout#NORTH}.
	 * @return String
	 */
	getPosition: function () {
		return zul.layout.Borderlayout.NORTH;
	},
	/**
	 * Returns the size of this region. This method is shortcut for
	 * {@link #getHeight()}.
	 * @return String
	 */
	getSize: function () {
		// Bug ZK-1490: Cannot find 'getHeight' method in widget.js
		return this.$supers(North, 'getHeight', arguments);
	},
	/**
	 * Sets the size of this region. This method is shortcut for
	 * {@link #setHeight(String)}.
	 * @param String size
	 */
	setSize: function () {
		return this.$supers(North, 'setHeight', arguments);
	},

	_ambit2: function (ambit, mars, split) {
		ambit.w = mars.left + mars.right;
		ambit.h += split.offsetHeight;
		ambit.ts = ambit.y + ambit.h + mars.bottom; // total size;
	},
	_reszSp2: function (ambit, split) {
		ambit.h -= split.h;
		return {
		  	left: jq.px0(ambit.x),
			top: jq.px0(ambit.y + ambit.h),
			width: jq.px0(ambit.w)
		};
	}
});