import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoadingAppWidget extends StatelessWidget {
  final double? size;
  const LoadingAppWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size ?? 150,
        width: size ?? 150,
        child: CircularProgressIndicator(),
      ),
    );
  }
}








// import 'package:flutter/material.dart';

// class LoadingAppWidget extends StatefulWidget {
//   final double? size;
//   const LoadingAppWidget({super.key, this.size});

//   @override
//   State<LoadingAppWidget> createState() => _LoadingAppWidgetState();
// }

// class _LoadingAppWidgetState extends State<LoadingAppWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation1;
//   late Animation<double> _animation2;
//   late Animation<double> _animation3;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(duration: const Duration(seconds: 1), vsync: this)
//           ..repeat();

//     _animation1 = Tween<double>(begin: 0.3, end: 1).animate(
//         CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.6)));

//     _animation2 = Tween<double>(begin: 0.3, end: 1).animate(
//         CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.8)));

//     _animation3 = Tween<double>(begin: 0.3, end: 1).animate(
//         CurvedAnimation(parent: _controller, curve: const Interval(0.4, 1.0)));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   Widget _buildDot(Animation<double> animation) {
//     return ScaleTransition(
//       scale: animation,
//       child: Container(
//         width: 12,
//         height: 12,
//         margin: const EdgeInsets.symmetric(horizontal: 4),
//         decoration: BoxDecoration(
//           color: Theme.of(context).primaryColor,
//           shape: BoxShape.circle,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = widget.size ?? 160.0;

//     return Center(
//       child: Material(
//         color: Colors.transparent,
//         child: Container(
//           width: size,
//           height: size * 0.6,
//           padding: const EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.15),
//                 blurRadius: 10,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Sedang memuat...',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: Colors.grey[800],
//                   fontSize: 16,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _buildDot(_animation1),
//                   _buildDot(_animation2),
//                   _buildDot(_animation3),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
