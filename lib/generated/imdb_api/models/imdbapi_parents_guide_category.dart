// ignore_for_file: type=lint
/// auto generated
///  ParentsGuideCategory defines the categories for the Parents Guide. - SEXUAL_CONTENT: Sex & Nudity - VIOLENCE: Violence & Gore - PROFANITY: Profanity - ALCOHOL_DRUGS: Alcohol, Drugs & Smoking - FRIGHTENING_INTENSE_SCENES: Frightening & Intense Scenes
enum ImdbapiParentsGuideCategory {
    sexualContent('SEXUAL_CONTENT'),
    violence('VIOLENCE'),
    profanity('PROFANITY'),
    alcoholDrugs('ALCOHOL_DRUGS'),
    frighteningIntenseScenes('FRIGHTENING_INTENSE_SCENES');
    const ImdbapiParentsGuideCategory(this.value);
    final String value;
}
