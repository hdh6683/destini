//Step 6 - import the story.dart file into this file.
import 'story.dart';

//Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

  List<Story> _storyData = [
    Story(
        storyTitle:
            '휴대폰 수신도 되지 않는 인적 없는 구불구불한 도로에서 당신의 자동차 타이어가 터졌습니다. 당신은 히치하이킹을 하기로 결정합니다. 녹슨 픽업트럭이 우르릉거리며 당신 옆에 멈춰 섰습니다. 챙이 넓은 모자를 쓰고 영혼 없는 눈을 한 남자가 조수석 문을 열며 "내 차 탈래?"라고 묻습니다.',
        choice1: '타겠습니다. 도와주셔서 감사합니다!',
        choice2: '먼저 그 사람이 살인자인지 물어본다.'),
    Story(
        storyTitle: '그는 질문에도 흔들리지 않고 천천히 고개를 끄덕였다.',
        choice1: '적어도 그 사람은 정직하다. 차를 타러 간다.',
        choice2: '잠깐만요, 저는 타이어 교체하는 방법을 알고 있어요.'),
    Story(
        storyTitle:
            '운전을 시작하자 낯선 사람이 자신과 어머니의 관계에 대해 이야기하기 시작합니다. 그는 점점 더 화를 냅니다. 그는 글로브박스를 열어달라고 요청합니다. 그 안에는 피 묻은 칼, 잘린 손가락 두 개, 엘튼 존의 카세트 테이프가 있습니다. 그는 글러브 박스에 손을 뻗습니다.',
        choice1: '나는 엘튼 존이 좋아! 그에게 카세트 테이프를 건네준다.',
        choice2: '그 사람 아니면 나야! 당신은 칼을 들고 그를 찌른다.'),
    Story(
        storyTitle:
            '갑자기 도망치다니! 대부분의 성인 연령층에서 교통사고가 사망의 두 번째 원인이라는 사실을 알고 계셨습니까?',
        choice1: '처음으로',
        choice2: ''),
    Story(
        storyTitle:
            '가드레일을 부수고 아래의 날카로운 바위를 향해 돌진하며, 당신은 당신이 타고 있는 차를 운전하는 누군가를 찌르는 것이 얼마나 어리석은 일인지 생각해 봅니다.',
        choice1: '처음으로',
        choice2: ''),
    Story(
        storyTitle:
            '당신은 "오늘 밤 사랑을 느낄 수 있나요"라는 구절을 부르며 살인자와 결속을 맺습니다. 그는 당신을 다음 마을에 내려줍니다. 당신이 가기 전에 그는 시체를 버릴 수 있는 좋은 장소를 아느냐고 묻습니다. 당신은 "부두에 가보세요"라고 답합니다.',
        choice1: '처음으로',
        choice2: '')
  ];

//Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }
//Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;
//Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int userChoice) {
    switch (_storyNumber) {
      case 0:
        if (userChoice == 1) {
          _storyNumber = 2;
        } else {
          _storyNumber = 1;
        }
        break;
      case 1:
        if (userChoice == 1) {
          _storyNumber = 2;
        } else {
          _storyNumber = 3;
        }
        break;
      case 2:
        if (userChoice == 1) {
          _storyNumber = 5;
        } else {
          _storyNumber = 4;
        }
        break;
      case 3:
      case 4:
      case 5:
        restart();
        break;
    }
  }
//Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
  void restart() {
    _storyNumber = 0;
  }

//Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2)
      return true;
    else
      return false;
  }
}
