import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'experience_event.dart';
part 'experience_state.dart';

List<Experience> experiencesData = [
  Experience(
    image: 'https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png',
    org: 'learning Flutter',
    period: '2022-2023',
    jobDesc: 'Mobile Developer, autodidacte Flutter, build of many differents project to learn and use Flutter',
    stack: 'Flutter, Dart',
  ),
  Experience(
    image: 'https://yt3.googleusercontent.com/YcrSJOW9BY27NeaNfjJ2IcUXOqs79T3qVkb-o_qrTww2Xy9EHMgtMySXJRw7-ejj1F1KuZeygg=s176-c-k-c0x00ffffff-no-rj',
    org: 'ACENSI',
    period: '2016-2022',
    jobDesc: 'FrontEnd Developer, Work for many clients such as BNP Real Estate, Engie, IBM, BNP Personnal Finance',
    stack: 'JavaScript, Angular, Swift',
  ),
  Experience(
    image: 'https://www.eion.io/eionAppIcon.png',
    org: 'Eion',
    period: '2014-2016',
    jobDesc: 'Mobile Developer, build an iOS app focused on image and art professional',
    stack: 'Objectif-C',
  ),
  Experience(
    image:
        'https://scontent-cdg4-3.xx.fbcdn.net/v/t39.30808-6/354244215_697152142422712_7668829667247346013_n.png?_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=VC-xQQLJRukAX-1slme&_nc_ht=scontent-cdg4-3.xx&oh=00_AfDSkjgpBFkSWyuQLdI7iuN9hJSG0yDD1UbK26hr-iInfw&oe=659C880F',
    org: 'OP1C - On prend un cafe',
    period: '2012-2013',
    jobDesc: 'JavaScript Developer, research and developed many Facebook Apps',
    stack: 'JavaScript, PHP',
  ),
  Experience(
    image: 'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/v1397209090/45a26b9b7475566518e89d60e535e70b.jpg',
    org: 'LeNewz',
    period: '2011',
    jobDesc: 'Web Development Intership, build new features for a Web News website, that gathered many articles based on keywords',
    stack: 'JavaScript, PHP',
  ),
];

class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  ExperienceBloc() : super(ExperienceInitial()) {
    on<ExperienceEvent>((event, emit) {});
    on<LoadingExperience>(_loadExperience);
  }

  void _loadExperience(ExperienceEvent event, Emitter<ExperienceState> emit) {
    emit(ExperienceLoaded(experiences: experiencesData));
  }
}
