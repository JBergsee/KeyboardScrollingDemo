# What I want to achieve:

If tapping on a textfield that will be hidden by the keyboard, the view shall move up to avoid this. When the keyboard disappears, the view shall move down again.
Different content views of different sizes containing more or less complicated layouts shall be loadable from xibs onto a "base view" containing only the scroll view. No assumption of the content size can be made beforehand in the scrollview, and no assumption of the available scrollview frame can be made in advance in the content view's xib.
Note that the contentviews has to adapt to new frame sizes upon rotation of the device or when used in split view mode.

# View architecture:

Example 1: A base view with a scroll view loads a xib as content view on the scroll view.

Example 2: A base view with a scroll view constrained between other views loads several other view controllers as content on the scroll view. View1 is a scrollview with the content set in storyboard. View2 is a scrollview which loads it's content from a xib. (same as in example 1.)


# Problems:

In example 1 and view2 in example 2, the content view (blue) seems to load correctly (size of blue view matches the available space for it exactly), but the scrollable contentsize seems too big, as I am able to scroll the view despite the fact that all content is shown already.

In example 2 I get the behaviour I require, i.e. No scrolling possible except when the keyboard is shown and the contentinsets make it possible to scroll. However, I had to define the contentview directly in the scroll view in the storyboard, and set a constraint on the content height. Some of my larger content views (in xibs not included in this project) are higher than the frame size available in a storyboard, and are therefore defined using freeform size in IB.


# Tried so far:
- All sorts of different autolayout constraints and autoresizing options in IB.
- Different ways of loading the contentview in "InfoViewController", and setting the contentsize.


# Questions:
- Can this be achieved using constraints and/or autoresizing masks in IB?
- Can this be achieved by setting constraints programmatically between contentview and scrollview in InfoViewController viewDidLoad?
- Any other way?
