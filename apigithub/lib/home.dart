import 'package:adobe_xd/pinned.dart';
import 'package:apigithub/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = HomeController();

  _success() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 500, 0, 0),
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        itemCount: controller.todos.length,
        itemBuilder: (context, index) {
          var todo = controller.todos[index];
          return Stack(
            children: [
              Container(
                height: 89,
                width: 368,
                margin: const EdgeInsets.fromLTRB(22.0, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(110, 20, 5, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    alignment: AlignmentDirectional.bottomStart,
                    image: NetworkImage(todo.avatarUrl),
                    scale: 0.1,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Text(
                  todo.login,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container (
                padding: const EdgeInsets.fromLTRB(135, 60, 5, 10),
                child: Text(todo.htmlUrl,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
                ),
              ),
              Container (
                padding: const EdgeInsets.fromLTRB(310, 15, 5, 10),
                child: const Icon(
          Icons.whatshot,
          color: Colors.deepOrange,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
          ),
              ),
              Container (
                padding: const EdgeInsets.fromLTRB(340, 20, 5, 0),
                child: const Text('5.0',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  _error() {
    return Center(
      child: RaisedButton(
        onPressed: () {
          _start();
        },
        child: const Text('Tentar Novamente'),
      ),
    );
  }

  _Loading() {
    return const Center(child: CircularProgressIndicator());
  }

  _start() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _Loading();
      case HomeState.erro:
        return _error();
      case HomeState.success:
        return _success();
      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff053f5e),
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 0.0),
            child: SizedBox.expand(
                child:
                    // Adobe XD layer: 'bg' (shape)
                    SvgPicture.string(
              _svg_tpw2kd,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            )),
          ),
          Pinned.fromPins(
            Pin(size: 160.0, start: 25.0),
            Pin(size: 26.0, middle: 0.5903),
            child: const Text(
              'mais pontuados',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: Color(0xff363636),
                letterSpacing: 0.3,
                fontWeight: FontWeight.w700,
                height: 1.35,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 80.0, end: 25.0),
            Pin(size: 24.0, middle: 0.5901),
            child: const Text(
              'ver tudo',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Color(0xff5e5d5d),
                letterSpacing: 0.27,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, end: 40.0),
            Pin(size: 110.0, middle: 0.4644),
            child:
                // Adobe XD layer: 'brain' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'bg' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff107163),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x17000000),
                        offset: Offset(0, 15),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 15.0, end: 15.0),
                  Pin(size: 5.0, end: 15.0),
                  child:
                      // Adobe XD layer: 'button bg' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0x12d9fffa),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.13),
                  child: SizedBox(
                    width: 60.0,
                    height: 18.0,
                    child: Text(
                      'Neuro',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        color: Color(0xffffffff),
                        letterSpacing: 0.195,
                        fontWeight: FontWeight.w500,
                        height: 2.076923076923077,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.007, -0.613),
                  child: SizedBox(
                    width: 27.0,
                    height: 24.0,
                    child:
                        // Adobe XD layer: 'brain icon' (shape)
                        SvgPicture.string(
                      _svg_tj4j17,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(-0.053, -0.071),
            child: SizedBox(
              width: 90.0,
              height: 110.0,
              child:
                  // Adobe XD layer: 'heart' (group)
                  Stack(
                children: <Widget>[
                  // Adobe XD layer: 'bg' (shape)
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff107163),
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x17000000),
                          offset: Offset(0, 15),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 15.0, end: 15.0),
                    Pin(size: 20.0, end: 15.0),
                    child:
                        // Adobe XD layer: 'button bg' (shape)
                        Container(
                      decoration: BoxDecoration(
                        color: const Color(0x12d9fffa),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.018, 0.13),
                    child: SizedBox(
                      width: 60.0,
                      height: 18.0,
                      child: Text(
                        'Coração',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 13,
                          color: Color(0xffffffff),
                          letterSpacing: 0.195,
                          fontWeight: FontWeight.w500,
                          height: 2.076923076923077,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        softWrap: false,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.04, 0.6),
                    child: SizedBox(
                      width: 60.0,
                      height: 10.0,
                      child: Text(
                        '18 Doutores',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 8,
                          color: Color(0xffffffff),
                          letterSpacing: 0.12,
                          height: 2.375,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 28.0, middle: 0.5082),
                    Pin(size: 25.9, start: 16.0),
                    child:
                        // Adobe XD layer: 'heart icon' (shape)
                        SvgPicture.string(
                      _svg_ibw3ve,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, start: 25.0),
            Pin(size: 110.0, middle: 0.4644),
            child:
                // Adobe XD layer: 'dental' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'bg' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff107163),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x17000000),
                        offset: Offset(0, 15),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 15.0, end: 15.0),
                  Pin(size: 20.0, end: 15.0),
                  child:
                      // Adobe XD layer: 'button bg' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0x12d9fffa),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 21.0, middle: 0.5017),
                  Pin(size: 27.8, start: 15.0),
                  child:
                      // Adobe XD layer: 'dental icon' (shape)
                      SvgPicture.string(
                    _svg_bamw6q,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                const Align(
                  alignment: Alignment(2.0, 0.13),
                  child: SizedBox(
                    width: 80.0,
                    height: 18.0,
                    child: Text(
                      'Dentistas',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        color: Color(0xffffffff),
                        letterSpacing: 0.195,
                        fontWeight: FontWeight.w500,
                        height: 2.07,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.04, 0.6),
                  child: SizedBox(
                    width: 60.0,
                    height: 10.0,
                    child: Text(
                      '26 Doutores',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 8,
                        color: Color(0xffffffff),
                        letterSpacing: 0.12,
                        height: 2.375,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 85.0, end: 25.0),
            Pin(size: 24.0, middle: 0.3566),
            child: const Text(
              'Ver todas',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Color(0xff5e5d5d),
                letterSpacing: 0.27,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, start: 25.0),
            Pin(size: 26.0, middle: 0.3562),
            child: const Text(
              'Categorias',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: Color(0xff363636),
                letterSpacing: 0.3,
                fontWeight: FontWeight.w700,
                height: 1.35,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 25.0),
            Pin(size: 50.0, middle: 0.2651),
            child:
                // Adobe XD layer: 'search' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'place holder' (shape)
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        offset: Offset(0, 10),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 64.4, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'search icon bg' (shape)
                      Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      label: const SizedBox(),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff107163),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 110.0, start: 15.0),
                  Pin(size: 23.0, middle: 0.5185),
                  child: const Text(
                    'buscando…',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 17.5,
                      color: Color(0xffababab),
                      letterSpacing: 1.05,
                      height: 1.542857142857143,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 280.0, start: 35.0),
            Pin(size: 75.0, start: 110.0),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: Color(0xff363636),
                  letterSpacing: 0.375,
                  height: 1.3333333333333333,
                ),
                children: [
                  TextSpan(
                    text: 'Olá Anderson!\n',
                  ),
                  TextSpan(
                    text: 'Seja Bem Vindo!',
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 0.44999999999999996,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 15.7, end: 25.0),
            Pin(size: 43.0, start: 25.0),
            child:
                // Adobe XD layer: 'nav' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 41.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'profile img' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(''),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.811),
                  Pin(start: 4.8, end: 4.8),
                  child:
                      // Adobe XD layer: 'notification icon' (group)
                      Stack(
                    children: <Widget>[
                      Container(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff0eb214),
                            borderRadius: const BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffffffff)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 17.0,
                    height: 14.0,
                    child:
                        // Adobe XD layer: 'menu' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 1.0, middle: 0.5251),
                          child: SvgPicture.string(
                            _svg_ym21,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 8.3, start: 0.0),
                          Pin(size: 1.0, end: -1.0),
                          child: SvgPicture.string(
                            _svg_b4ivrq,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 8.0,
                            height: 1.0,
                            child: SvgPicture.string(
                              _svg_snp6yf,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment(0.618, 0.012),
            child: SizedBox(
              width: 40.0,
              height: 10.0,
              child: Text(
                '32 Doctors',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 8,
                  color: Color(0xffffffff),
                  letterSpacing: 0.12,
                  height: 2.375,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: controller.state,
            builder: (context, child) {
              return stateManagement(controller.state.value);
            },
          ),
        ],
      ),
    );
  }
}

const String _svg_yxtm3i =
    '<svg viewBox="292.2 771.0 1.0 10.7" ><path transform="translate(-302.0, 202.0)" d="M 594.2473754882812 569 L 594.2473754882812 579.6978759765625" fill="none" stroke="#e1e1e1" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tpw2kd =
    '<svg viewBox="0.0 72.0 375.0 740.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 375.0, 812.0)" d="M 0 0 L 375 0 L 375 710 C 375 726.5685424804688 361.5685424804688 740 345 740 L 30 740 C 13.43145751953125 740 0 726.5685424804688 0 710 L 0 0 Z" fill="#f6f6f6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jtb5l =
    '<svg viewBox="292.2 667.0 1.0 10.7" ><path transform="translate(-302.0, 98.0)" d="M 594.2473754882812 569 L 594.2473754882812 579.6978759765625" fill="none" stroke="#e1e1e1" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q9qfca =
    '<svg viewBox="292.2 563.0 1.0 10.7" ><path transform="translate(-302.0, -6.0)" d="M 594.2473754882812 569 L 594.2473754882812 579.6978759765625" fill="none" stroke="#e1e1e1" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wwraji =
    '<svg viewBox="355.0 326.0 90.0 110.0" ><path transform="translate(355.0, 326.0)" d="M 5 0 L 85 0 C 87.76142120361328 0 90 2.238576173782349 90 5 L 90 105 C 90 107.7614212036133 87.76142120361328 110 85 110 L 5 110 C 2.238576173782349 110 0 107.7614212036133 0 105 L 0 5 C 0 2.238576173782349 2.238576173782349 0 5 0 Z" fill="#107163" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t88yiy =
    '<svg viewBox="388.0 342.3 24.8 24.8" ><path transform="matrix(0.707107, -0.707107, 0.707107, 0.707107, 383.23, 354.83)" d="M 22.95504760742188 11.61593437194824 C 23.92096138000488 11.20323371887207 24.53117561340332 10.35949039459229 24.53117561340332 9.436810493469238 L 24.53117561340332 9.186570167541504 C 24.53117561340332 7.840708255767822 23.25478744506836 6.750000476837158 21.67981147766113 6.750000476837158 C 20.45248413085938 6.750000476837158 19.3631477355957 7.421129703521729 18.97486686706543 8.415867805480957 C 18.68049049377441 9.170192718505859 18.53023719787598 9.894383430480957 17.51411056518555 9.894383430480957 L 7.016683101654053 9.894383430480957 C 5.967208385467529 9.894383430480957 5.806222915649414 9.057847023010254 5.555928230285645 8.415867805480957 C 5.168028831481934 7.421129703521729 4.078307628631592 6.750000476837158 2.85136604309082 6.750000476837158 C 1.276387810707092 6.750000476837158 0 7.840708255767822 0 9.186570167541504 L 0 9.436810493469238 C 0 10.35949039459229 0.6102129817008972 11.20323371887207 1.576128005981445 11.61593437194824 C 1.93757963180542 11.7702054977417 1.93757963180542 12.21107482910156 1.576128005981445 12.3653450012207 C 0.6102129817008972 12.77804660797119 0 13.62178802490234 0 14.54446983337402 L 0 14.79470920562744 C 0 16.14057350158691 1.276387810707092 17.23128318786621 2.850982666015625 17.23128318786621 C 4.078307628631592 17.23128318786621 5.167645454406738 16.56015205383301 5.555928230285645 15.56540966033936 C 5.850302219390869 14.81108665466309 6.000555992126465 14.08689594268799 7.016683101654053 14.08689594268799 L 17.51411056518555 14.08689594268799 C 18.56358528137207 14.08689594268799 18.72457313537598 14.92343425750732 18.97486686706543 15.56540966033936 C 19.36314582824707 16.56015205383301 20.45286560058594 17.23128318786621 21.67981147766113 17.23128318786621 C 23.25440788269043 17.23128318786621 24.53079414367676 16.14057350158691 24.53079414367676 14.79470920562744 L 24.53079414367676 14.54446983337402 C 24.53079414367676 13.62146091461182 23.92058181762695 12.77804470062256 22.95466613769531 12.3653450012207 C 22.59359741210938 12.21107482910156 22.59359741210938 11.7702054977417 22.95504760742188 11.61593437194824 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tj4j17 =
    '<svg viewBox="276.5 342.5 27.4 24.4" ><path transform="translate(276.51, 342.55)" d="M 9.910179138183594 0 C 8.485590934753418 0 7.30399227142334 0.9767244458198547 6.965712547302246 2.296493530273438 C 6.927597045898438 2.296493530273438 6.899009704589844 2.286964416503906 6.860893249511719 2.286964416503906 C 5.17902135848999 2.286964416503906 3.811607360839844 3.654378414154053 3.811607360839844 5.336250305175781 C 3.811607360839844 5.564946174621582 3.840194225311279 5.788878440856934 3.892603874206543 6.003281593322754 C 2.501367330551147 6.57502269744873 1.524642944335938 7.937672138214111 1.524642944335938 9.529018402099609 C 1.524642944335938 10.12934589385986 1.677107095718384 10.68679332733154 1.92009711265564 11.19183254241943 C 0.7766149044036865 11.84933471679688 0 13.06904792785645 0 14.48410797119141 C 0 16.0706901550293 0.9719598889350891 17.4333381652832 2.353667497634888 18.00507926940918 C 2.310786962509155 18.22424697875977 2.286964416503906 18.44817924499512 2.286964416503906 18.67687606811523 C 2.286964416503906 20.57315063476562 3.821136236190796 22.10732269287109 5.717411041259766 22.10732269287109 C 5.912755966186523 22.10732269287109 6.103336334228516 22.08349990844727 6.289152145385742 22.05014991760254 C 6.74654483795166 23.40803337097168 8.01390552520752 24.394287109375 9.529018402099609 24.394287109375 C 11.42529296875 24.394287109375 12.95946502685547 22.86011505126953 12.95946502685547 20.96384048461914 L 12.95946502685547 3.049285888671875 C 12.95946502685547 1.367413997650146 11.59205055236816 0 9.910179138183594 0 Z M 27.44357299804688 14.48410797119141 C 27.44357299804688 13.06904792785645 26.66695594787598 11.84933471679688 25.52347373962402 11.19183254241943 C 25.7712287902832 10.68679428100586 25.91893005371094 10.12934684753418 25.91893005371094 9.529019355773926 C 25.91893005371094 7.937673091888428 24.94220542907715 6.57502269744873 23.55097007751465 6.003282070159912 C 23.5986156463623 5.78887939453125 23.63196563720703 5.564947128295898 23.63196563720703 5.336250782012939 C 23.63196563720703 3.654378890991211 22.26455307006836 2.286965131759644 20.58267974853516 2.286965131759644 C 20.54456329345703 2.286965131759644 20.51121139526367 2.296494007110596 20.47785949707031 2.296494007110596 C 20.13957977294922 0.9767244458198547 18.95798110961914 0 17.53339385986328 0 C 15.85152244567871 0 14.48410797119141 1.362649440765381 14.48410797119141 3.049285888671875 L 14.48410797119141 20.96384048461914 C 14.48410797119141 22.86011505126953 16.01828002929688 24.394287109375 17.91455459594727 24.394287109375 C 19.42966651916504 24.394287109375 20.69702911376953 23.40803337097168 21.15442085266113 22.05014991760254 C 21.34023666381836 22.08349990844727 21.53081512451172 22.10732269287109 21.72616195678711 22.10732269287109 C 23.62243843078613 22.10732269287109 25.15660858154297 20.57315063476562 25.15660858154297 18.67687606811523 C 25.15660858154297 18.44817924499512 25.13278579711914 18.22424697875977 25.08990478515625 18.00507926940918 C 26.47161293029785 17.4333381652832 27.44357299804688 16.07069206237793 27.44357299804688 14.48410797119141 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ibw3ve =
    '<svg viewBox="166.5 342.0 28.0 25.9" ><path transform="translate(163.93, 338.14)" d="M 23.23076629638672 3.856066942214966 C 20.28627777099609 3.856066942214966 17.75220680236816 6.251327037811279 16.57840347290039 8.753061294555664 C 15.40372753143311 6.251380920410156 12.8693265914917 3.856066703796387 9.924618721008301 3.856066703796387 C 5.865284442901611 3.856066942214966 2.570701360702515 7.15100622177124 2.570701360702515 11.21064281463623 C 2.570701360702515 19.46839904785156 10.90106391906738 21.63368988037109 16.57835006713867 29.79783058166504 C 21.94463539123535 21.68424987792969 30.58479309082031 19.20483779907227 30.58479309082031 11.21064376831055 C 30.58479309082031 7.15100622177124 27.29012870788574 3.856066942214966 23.23076629638672 3.856066942214966 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bamw6q =
    '<svg viewBox="59.6 341.0 21.0 27.8" ><path transform="translate(54.6, 339.83)" d="M 15.51943778991699 16.22721481323242 C 17.60219764709473 16.22721481323242 18.56753540039062 17.8067512512207 18.77011489868164 20.05098915100098 C 18.81767654418945 20.58767890930176 18.76952743530273 21.37039947509766 18.69965362548828 22.27702331542969 C 18.46595191955566 25.28812980651855 18.19701957702637 28.98800468444824 20.20109558105469 28.98800468444824 C 21.8980712890625 28.98800468444824 22.76769828796387 25.73497772216797 23.27150726318359 22.02629280090332 C 23.75652313232422 18.35518646240234 23.24155807495117 16.5284423828125 23.49581336975098 14.89781951904297 C 23.97789192199707 11.80920600891113 26.67367935180664 9.040022850036621 25.84104347229004 5.101747035980225 C 25.37951278686523 2.916816234588623 24.1757755279541 1.889822959899902 22.98495674133301 1.457064867019653 C 20.24043464660645 0.4582565724849701 18.46712493896484 2.383061408996582 15.51943778991699 2.383061408996582 C 12.57233810424805 2.383061408996582 10.80020141601562 0.4582564532756805 8.05450439453125 1.457064867019653 C 6.864272117614746 1.889235854148865 5.659947872161865 2.916816234588623 5.197242736816406 5.101747035980225 C 4.366370677947998 9.040022850036621 7.061567783355713 11.80861854553223 7.545411109924316 14.89781951904297 C 7.79731559753418 16.52785682678223 7.285286903381348 18.35518646240234 7.769717216491699 22.02629280090332 C 8.272354125976562 25.73498153686523 9.143740653991699 28.98800468444824 10.83895492553711 28.98800468444824 C 12.84185791015625 28.98800468444824 12.57468605041504 25.28812599182129 12.34098434448242 22.27702140808105 C 12.27287006378174 21.36981582641602 12.2211971282959 20.58709144592285 12.26993465423584 20.05039978027344 C 12.47192859649658 17.8067512512207 13.45135879516602 16.22721481323242 15.51943778991699 16.22721481323242 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ym21 =
    '<svg viewBox="0.0 6.8 16.6 1.0" ><path transform="translate(-30.7, -29.4)" d="M 30.69856643676758 36.22430801391602 L 47.27579116821289 36.22430801391602" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_b4ivrq =
    '<svg viewBox="0.0 14.0 8.3 1.0" ><path transform="translate(-30.7, -23.4)" d="M 30.69856643676758 37.39829635620117 L 38.98717880249023 37.39829635620117" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_snp6yf =
    '<svg viewBox="8.0 0.0 8.3 1.0" ><path transform="translate(-22.7, -37.4)" d="M 30.69856643676758 37.39829635620117 L 38.98717880249023 37.39829635620117" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
