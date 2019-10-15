import 'dart:convert';

class Story {
  int storyNumber;
  String story;
  String choice1;
  int choice1Result;
  String choice2;
  int choice2Result;

  Story(this.storyNumber, this.story, this.choice1, this.choice1Result,
      this.choice2, this.choice2Result);
}

class StoryData {
  List<Story> stories = [];
  static String storyJSON = """
[
  {
    "storyNumber": 0,
    "story": "You have gone on a trek with your friends but got lost in the forest. You don't have any devices and it is now pitch dark. You are wandering in hope to see another human, and suddenly you see a wooden cabin with some fire light. Would you go and knock the door of the cabin?.",
    "choice1": "I'll go to the cabin and ask for help",
    "choice1_result": 1,
    "choice2": "I'll ignore the cabin because who possibly can live in the middle of a Jungle",
    "choice2_result": 3
  },
  {
    "storyNumber": 1,
    "story": "A guy with plastic apron covered with blood and a huge knife in his hand opens the door",
    "choice1": "Ask him if that's human blood.",
    "choice1_result": 2,
    "choice2": "Ignore the attire and ask if you can get some water",
    "choice2_result": 4
  },
  {
  "storyNumber": 2,
  "story": "He tells you it is Human blood of a very bad person",
  "choice1": "You believe him and ask if he can help you?",
  "choice1_result": 5,
  "choice2": "You panic, and run away back to jungle",
  "choice2_result": 3
  },
  {
    "storyNumber": 3,
    "story": "You are trapped in the jungle trying to find a way out, but it is end of your journey as a poisonous snake bites you and you die painfully",
    "choice1": "Restart",
    "choice1_result": 0,
    "choice2": null,
    "choice2_result": null
   },
  {
    "storyNumber": 4,
    "story": "He goes inside, you act smart and try to peek in the cabin. You follow the blood trail to the back of cabin and discover one of your friends lying there. As you turn to run, a sharp pain arises in your shoulder and everything goes dark. You have escaped from this world",
    "choice1": "Restart",
    "choice1_result": 0,
    "choice2": null,
    "choice2_result": null
   },
  {
    "storyNumber": 5,
    "story": "He gives you sleeping bag, put a bonfire to keep you warm, gives you food and you both bond over anatomy of human body. In morning he takes you out of jungle and promises you to invite for his next 'hunt'",
    "choice1": "Restart",
    "choice1_result": 0,
    "choice2": null,
    "choice2_result": null
   }
]
""";

  List data = jsonDecode(storyJSON);

  StoryData() {
    data.forEach((storyMap) {
      stories.add(Story(
          storyMap['storyNumber'],
          storyMap['story'],
          storyMap['choice1'],
          storyMap['choice1_result'],
          storyMap['choice2'],
          storyMap['choice2_result']));
    });
  }
}
