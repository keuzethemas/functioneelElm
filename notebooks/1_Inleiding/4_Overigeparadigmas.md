
# 1.4 Overige paradigma's

Zoals in het begin van het vorige hoofdstuk is gezegd, worden in deze syllabus de meest gangbare paradigma's besproken. De paradigma's die hier zijn beschreven zijn niet per definitie de enige programmeerparadigma's. Om verschillende redenen kunnen ook andere benaderingen worden genoemd als programmeerparadigma's. Ieder ander paradigma zal weer speciale eigenschappen hebben en geschikt zijn voor ontwikkelen van software voor bijzondere specifieke problematiek. Hieronder worden slechts enkele voorbeelden genoemd van andere programmeerparadigma's.

## Parallel / gedistribueerd programmeren

Het is mogelijk dat verschillende taken binnen een systeem gelijktijdig worden uitgevoerd (in plaats van strikt achtereenvolgens). Het optimaal gebruik van deze mogelijkheid vraagt om een benadering waarin bij de opdeling van opdrachten nadrukkelijk rekening wordt gehouden met de afhankelijkheden en onafhankelijkheden van stukken code. Deze benadering zou je als 'parallel programmeren' of '' gedistribueerd' kunnen duiden. Hierbij moet bijvoorbeeld nadrukkelijk rekening worden gehouden met wederzijdse uitsluiting van taken die op zich wel gelijktijdig kunnen worden uitgevoerd, maar voor het benaderen van bepaalde bronnen (zoals geheugenruimte, of het aansturen van bepaalde componenten) elkaar wederzijds uitsluiten. Hierbij krijg je onder meer te maken met begrippen als atomiciteit en synchronisatie.

## Event driven programmeren

In traditionele omgevingen waarin gebruik werd gemaakt van tekst gebaseerde gebruikersinterfaces, werd vooral lineair ontwikkeld. In een andere manier van programmeren worden bepaalde stukken code uitgevoerd als reactie op een bepaalde gebeurtenis ('event driven programmeren'). Het kan hierbij bijvoorbeeld gaan om een gebeurtenis in de gebruikersinterace (bijvoorbeeld een knop wordt ingedrukt, of de cursor die ergens overheen beweegt). Binnen gamesdesign ligt het ook voor de hand om event driven te ontwikkelen. Denk hierbij bijvoorbeeld aan wat er moet gebeuren als een voorwerp in een game botst met (wordt geraakt door) een ander voorwerp.
Ontwikkelomgevingen waarin het mogelijk is om event driven te programmeren moeten beschikken over een mechanisme waarmee voortdurend wordt gecontroleerd welke gebeurtenissen er plaats vinden (event listeners / event handlers).

## Reactief programmeren

Reactief programmeren is een programmeerparadigma dat zich richt op datastromen en de verspreiding van de verandering. Omgevingen voor reactief programmeren ondersteunen optimaal het doorvoeren van wijzigingen in een omgeving met statische of dynamische gegevens. Een modern spreadsheetprogramma is een voorbeeld van reactieve programmeeromgeving. Spreadsheetcellen kunnen letterlijke waarden bevatten, maar ook formules zoals "= B1 + C1".  De cellen met formules worden geëvalueerd op basis van de waarden in de andere cellen. Wanneer de waarde van een cel wordt gewijzigd, wordt de waarde van alle cellen met formules waarin wordt verwezen naar de gewijzigde cel automatisch bijgewerkt.

## Hybride omgevingen

In de meeste gevallen wordt een systeem niet ontwikkeld volgens één paradigma, maar wordt gebruik gemaakt van de kenmerken van de verschillende paradigma's door elkaar (een hybride benadering). Veel programmeertalen bieden dan ook ondersteuning aan de verschillende paradigma's.
