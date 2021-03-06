/*
 *  SCViewControllerTypedefs.h
 *  Sensible TableView
 *
 *  Copyright 2011-2015 Sensible Cocoa. All rights reserved.
 *
 *
 */



/** @enum The types of presentation modes used with SCViewController and SCTableViewController. */
typedef NS_ENUM(NSInteger, SCPresentationMode)
{
    /** The presenting control automatically determines how to present the view controller. */
    SCPresentationModeAuto,
    /** The the view controller gets presented modally. */
    SCPresentationModeModal,
    /** The the view controller is pushed into the navigation stack (when possible). */
    SCPresentationModePush,
    /** The the view controller is presented inside a popover (only valid on supported devices). */
    SCPresentationModePopover,
    /** The user will handle presenting the detail view. The presentation is typically handeled by implementing the customPresentDetalViewController action/delegate. */
    SCPresentationModeCustom,
};



/** @enum The types of navigation bars used in SCViewController and SCTableViewController. */
typedef NS_ENUM(NSInteger, SCNavigationBarType)
{
    /** Have the presenter control determine the best navigation bar type. Only applicable when the view controller is a detail view controller. */
	SCNavigationBarTypeAuto,
	/** Navigation bar with no buttons. If the view controller is on a navigation stack, the default back button is displayed. */
	SCNavigationBarTypeNone,
	/** Navigation bar with an Add button on the left. */
	SCNavigationBarTypeAddLeft,
	/** Navigation bar with an Add button on the right. */
	SCNavigationBarTypeAddRight,
	/** Navigation bar with an Edit button on the left. */
	SCNavigationBarTypeEditLeft,
	/** Navigation bar with an Edit button on the right. */
	SCNavigationBarTypeEditRight,
	/** Navigation bar with an Add button on the right and an Edit button on the left. */
	SCNavigationBarTypeAddRightEditLeft,
	/** Navigation bar with an Add button on the left and an Edit button on the right. */
	SCNavigationBarTypeAddLeftEditRight,
	/** Navigation bar with a Done button on the left. */
	SCNavigationBarTypeDoneLeft,
	/** Navigation bar with a Done button on the right. */
    SCNavigationBarTypeDoneRight,
    /** Navigation bar with a Cancel button on the left. */
    SCNavigationBarTypeCancelLeft,
	/** Navigation bar with a Done button on the left and a Cancel button on the right. */
	SCNavigationBarTypeDoneLeftCancelRight,
	/** Navigation bar with a Done button on the right and a Cancel button on the left. */
	SCNavigationBarTypeDoneRightCancelLeft,
	/** Navigation bar with both an Add and Edit buttons on the right. */
	SCNavigationBarTypeAddEditRight
	
};


/** @enum The types of SCViewController and SCTableViewController states. */
typedef NS_ENUM(NSInteger, SCViewControllerState)
{
	/** View controller is being displayed for the first time. A view controller remains in this state
	 *	until the viewDidAppear method has been called. */
	SCViewControllerStateNew,
	/** View controller is visible and active. */
	SCViewControllerStateActive,
	/** View controller has disappeared and is inactive. */
	SCViewControllerStateInactive,
	/** View controller has been dismissed (using either the Done or Cancel buttons). */
	SCViewControllerStateDismissed
	
};


