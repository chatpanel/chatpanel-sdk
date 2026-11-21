import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for RuntimeRecipe
void main() {
  final instance = RuntimeRecipeBuilder();
  // TODO add properties to the builder and call build()

  group(RuntimeRecipe, () {
    // bool ok
    test('to test the property `ok`', () async {
      // TODO
    });

    // owner/name:QUANT — what to pass as the service's model.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // String quant
    test('to test the property `quant`', () async {
      // TODO
    });

    // The weights' general.architecture; null when the header could not be read.
    // String arch
    test('to test the property `arch`', () async {
      // TODO
    });

    // String layout
    test('to test the property `layout`', () async {
      // TODO
    });

    // The weights file in the repo (the first shard of a split model).
    // String main
    test('to test the property `main`', () async {
      // TODO
    });

    // Bytes of the weights for this quant.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Weights + projector + draft against about three quarters of the memory; null when the memory is unknown.
    // bool fits
    test('to test the property `fits`', () async {
      // TODO
    });

    // num ramGB
    test('to test the property `ramGB`', () async {
      // TODO
    });

    // BuiltList<RuntimeRecipeQuantsInner> quants
    test('to test the property `quants`', () async {
      // TODO
    });

    // RuntimeRecipeProjector projector
    test('to test the property `projector`', () async {
      // TODO
    });

    // RuntimeRecipeDraft draft
    test('to test the property `draft`', () async {
      // TODO
    });

  });
}
