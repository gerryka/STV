/*
 *  SCModelActions.m
 *  Sensible TableView
 *
 *  Copyright 2011-2015 Sensible Cocoa. All rights reserved.
 *
 *
 */


#import "SCModelActions.h"

#import "SCTableViewModel.h"


@implementation SCModelActions

@synthesize didAddSection = _didAddSection;
@synthesize sortSections = _sortSections;
@synthesize didRefresh = _didRefresh;
@synthesize didFetchItemsFromStore = _itemsFetchedFromStore;
@synthesize sectionHeaderTitleForItem = _sectionHeaderTitleForItem;
@synthesize ownerTableViewModel = _ownerTableViewModel;

- (instancetype)init
{
    if( (self=[super init]) )
    {
        // initializations here
    }
    
    return self;
}


- (void)setActionsTo:(SCModelActions *)actions overrideExisting:(BOOL)override
{
    if((override || !self.didAddSection) && actions.didAddSection)
        self.didAddSection = actions.didAddSection;
    if((override || !self.didRemoveSection) && actions.didRemoveSection)
        self.didRemoveSection = actions.didRemoveSection;
    if((override || !self.sortSections) && actions.sortSections)
        self.sortSections = actions.sortSections;
    if((override || !self.sectionForSectionIndexTitle) && actions.sectionForSectionIndexTitle)
        self.sectionForSectionIndexTitle = actions.sectionForSectionIndexTitle;
    if((override || !self.didFinishLoadingCells) && actions.didFinishLoadingCells)
        self.didFinishLoadingCells = actions.didFinishLoadingCells;
    if((override || !self.didRefresh) && actions.didRefresh)
        self.didRefresh = actions.didRefresh;
    
    if((override || !self.didScroll) && actions.didScroll)
        self.didScroll = actions.didScroll;
    if((override || !self.didEndDragging) && actions.didEndDragging)
        self.didEndDragging = actions.didEndDragging;
    if((override || !self.didEndDecelerating) && actions.didEndDecelerating)
        self.didEndDecelerating = actions.didEndDecelerating;
    
    if((override || !self.shouldBeginEditing) && actions.shouldBeginEditing)
        self.shouldBeginEditing = actions.shouldBeginEditing;
    if((override || !self.didBeginEditing) && actions.didBeginEditing)
        self.didBeginEditing = actions.didBeginEditing;
    if((override || !self.shouldEndEditing) && actions.shouldEndEditing)
        self.shouldEndEditing = actions.shouldEndEditing;
    if((override || !self.didEndEditing) && actions.didEndEditing)
        self.didEndEditing = actions.didEndEditing;
    
    if((override || !self.didMoveCell) && actions.didMoveCell)
        self.didMoveCell = actions.didMoveCell;
    
    if((override || !self.didFetchItemsFromStore) && actions.didFetchItemsFromStore)
        self.didFetchItemsFromStore = actions.didFetchItemsFromStore;
    if((override || !self.sectionHeaderTitleForItem) && actions.sectionHeaderTitleForItem)
        self.sectionHeaderTitleForItem = actions.sectionHeaderTitleForItem;
    if((override || !self.sectionHeaderTitles) && actions.sectionHeaderTitles)
        self.sectionHeaderTitles = actions.sectionHeaderTitles;
    
    if((override || !self.didComputeSearchResults) && actions.didComputeSearchResults)
        self.didComputeSearchResults = actions.didComputeSearchResults;
}


@end
