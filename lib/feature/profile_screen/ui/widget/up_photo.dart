import 'package:flutter/material.dart';

class UploadPdfSection extends StatelessWidget {
  const UploadPdfSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'قم برفع التقرير او الوظيفة',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Image.asset(
                  'assets/images/login/Uploading files to cloud storage.png',
                  height: 140,
                ),
                const SizedBox(height: 16),
                const Text(
                  'يجب ان يكون الملف بصيغة pdf',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Add your file upload logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'حفظ التغييرات',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            // زر الإغلاق (X)
            Positioned(
              top: 0,
              left: 0,
              child: InkWell(
                onTap: () {
                  // يمكن استدعاء Navigator.pop(context); لو ده Dialog
                },
                child: const Icon(Icons.close, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
