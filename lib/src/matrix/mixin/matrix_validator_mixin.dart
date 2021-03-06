import 'package:ml_linalg/matrix.dart';

mixin MatrixValidatorMixin {
  void checkShape(Matrix first, Matrix second,
      {String errorTitle = 'Cannot perform the operation'}) {
    if (first.rowsNum != second.rowsNum ||
        first.columnsNum != second.columnsNum) {
      throw Exception('${errorTitle}: matrices have different shapes - '
          '(${first.rowsNum} x ${first.columnsNum}) and '
          '(${second.rowsNum} x ${second.columnsNum})');
    }
  }

  void checkColumnsAndRowsNumber(Matrix first, Matrix second,
      {String errorTitle = 'Cannot perform the operation'}) {
    if (first.columnsNum != second.rowsNum) {
      throw Exception(
          '$errorTitle: column number (${first.columnsNum}) of the first '
              'matrix is not equal to row number (${second.rowsNum}) of the '
              'second matrix');
    }
  }
}
