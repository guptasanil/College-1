//seaches both comments and stories for those matching a username and updates the numbe rof matching stories/ comments
void searchUsername(String username) {
  matchingStories = searchUserStory(username);
  numberOfMatchingStories = matchingStories.size();
  matchingComments = searchUserComment(username);
  numberOfMatchingComments = matchingComments.size();
}

//searches stories for a specific username
//parameters:
//  username (String)
//returns:
//  a list of relevant stories
ArrayList<Story> searchUserStory(String username) {
  ArrayList<Story> relevantStories = new ArrayList<Story>();
  for (int i = 0; i < storyList.size(); i++) {
    if (storyList.get(i).by.equals(username)) {
      relevantStories.add(storyList.get(i));
    }
  }
  return relevantStories;
}

//searches comments for a specific username
//parameters:
//  username (String)
//returns:
//  an list of relevant stories
ArrayList<Comment> searchUserComment(String username) {
  ArrayList<Comment> relevantComments = new ArrayList<Comment>();
  for (int i = 0; i < commentList.size(); i++) {
    if (commentList.get(i).by.equals(username)) {
      relevantComments.add(commentList.get(i));
    }
  }
  return relevantComments;
}

//searches stories for titles matching an inputted string
//parameters:
//  title (String)
//returns:
//  a list of relevant stories
ArrayList<Story> searchStoryTitles(String title) {
  ArrayList<Story> relevantStories = new ArrayList<Story>();
  for (int i = 0; i < storyList.size(); i++) {
    boolean firstIndex = storyList.get(i).title.toLowerCase().contains(title.toLowerCase());
    if (firstIndex) {
      relevantStories.add(storyList.get(i));
    }
  }
  return relevantStories;
}

//searches comments for text matching an inputted string
//parameters:
//  text (String)
//returns:
//  a list of relevant comments
ArrayList<Comment> searchComments(String input) {
  ArrayList<Comment> relevantComments = new ArrayList<Comment>();
  for (int index = 0; index < commentList.size(); index++) {
    boolean firstIndex = commentList.get(index).text.toLowerCase().contains(text.toLowerCase());
    if (firstIndex) {
      relevantComments.add(commentList.get(index));
    }
  }
  return relevantComments;
}