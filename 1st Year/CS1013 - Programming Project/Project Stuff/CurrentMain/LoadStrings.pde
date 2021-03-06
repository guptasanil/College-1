void loadStrings() {
  storyList = new ArrayList<Story>();
  commentList = new ArrayList<Comment>();
  String[] lines = loadStrings("news.json");
  for (int index = 0; index < lines.length; index++) {
    temp = parseJSONObject(lines[index]);
    if (temp.hasKey("type")) {
      String type = temp.getString("type");
      if (type.equals("story")) {
        ArrayList<Integer> kids = new ArrayList<Integer>();
        if (temp.hasKey("kids")) {
          JSONArray kidValues = temp.getJSONArray("kids");
          for (int i = 0; i < kidValues.size(); i++) {
            int tempKid = kidValues.getInt(i);
            kids.add(tempKid);
          }
        }
        int descendants = -1;
        if (temp.hasKey("descendants")) {
          descendants = temp.getInt("descendants");
        }
        String url = temp.getString("url");
        String title = "";
        if (temp.hasKey("title")) {
          title = temp.getString("title");
        }
        String by = "N/A";
        if (temp.hasKey("by")) {
          by = temp.getString("by");
        }
        int score = 0;
        if (temp.hasKey("score")) {
          score = temp.getInt("score");
        }
        int time = temp.getInt("time");
        int id = temp.getInt("id");
        Story story = new Story(kids, descendants, url, title, by, score, time, id);
        storyList.add(story);
      } else {
        ArrayList<Integer> kids = new ArrayList<Integer>();
        if (temp.hasKey("kids")) {
          JSONArray kidValues = temp.getJSONArray("kids");
          for (int i = 0; i < kidValues.size(); i++) {
            int tempKid = kidValues.getInt(i);
            kids.add(tempKid);
          }
        }
        int parent = temp.getInt("parent");
        String text = temp.getString("text");
        int id = temp.getInt("id");
        int time = temp.getInt("time");
        String by = "N/A";
        if (temp.hasKey("by")) {
          by = temp.getString("by");
        }
        Comment comment = new Comment(kids, parent, text, id, time, by);
        commentList.add(comment);
      }
    }
  }
}
