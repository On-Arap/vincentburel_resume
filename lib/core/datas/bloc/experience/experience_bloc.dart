import 'package:bloc/bloc.dart';
import '../../../classes/classe.dart';
part 'experience_event.dart';
part 'experience_state.dart';

List<Experience> experiencesData = [
  Experience(
    image: 'https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png',
    org: 'Flutter',
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
    image: 'https://media.licdn.com/dms/image/C4D0BAQGi5VLD3zj1KQ/company-logo_200_200/0/1630563622621/op1c_logo?e=1712793600&v=beta&t=54oJ_nOJdr8WaUQCQNm4kO9v_R-8CVUtgyUGMXF9Fh8',
    org: 'OP1C - On prend un cafe',
    period: '2012-2013',
    jobDesc: 'JavaScript Developer, research and developed many Facebook Apps',
    stack: 'JavaScript, PHP',
  ),
  Experience(
    image: 'https://images.crunchbase.com/image/upload/c_pad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/v1397209090/45a26b9b7475566518e89d60e535e70b.jpg',
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
