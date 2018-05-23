 function TokenCreation(
         string _tokenName,
         string _tokenSymbol,
-        uint _decimalPlaces) {
+        uint _decimalPlaces,
+        Plutocracy _plutocracy) Token(_plutocracy) {
         name = _tokenName;
         symbol = _tokenSymbol;
         decimals = _decimalPlaces;