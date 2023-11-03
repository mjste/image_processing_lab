# Treść zadania

1. Zainstaluj, YOLO V8 w wariancie do detekcji obiektów (rozmiar np. m - yolov8m.pt) i od razu przetestuj czy potrafi wykrywać psy i koty na poniższym obrazku.
2. Teraz musimy pozyskać zbiór obrazów treningowych wraz z etykietami. W tym celu możemy skorzystać z otwartego zbioru danych Open Images Dataset V7. Jednak będziemy musieli pobrać interesujący nas podzbiór obrazów z kategorii "food" oraz przygotować etykiety kompatybilne z YOLO. Do pobierania obrazów przyda się skrypt downloader.. py oraz pliki CSV zawierające spis obrazów (id, kategoria) oraz "pudełka", tj. koordynaty jedzenia na obrazach (gdyż dokonujemy nie tylko klasyfikacji ale i detekcji): <https://storage.googleapis.com/openimages/web/download_v7.html#download-manually>
3. Musimy przeparsować pliki CSV (np. przy pomocy biblioteki pandas), przygotować plik txt zrozumiały dla skryptu downloader.py, a następnie korzystając z niego pobrać obrazy treningowe i walidacyjne (w sensownej ilości), równocześnie zapisując ich etykiety do plików txt.
4. YOLO do treningu korzysta z pliku YAML zawierającego informacje na temat zbioru danych. Przygotowujemy taki plik. Można ręcznie, ale może lepiej skorzystać z biblioteki pyYAML
5. Czas na trening. Pobierz małą wersję YOLO (yolov8n.pt) i dotrenują ją przez 5 - 10 epok na przygotowanym datasecie.
6. Przetestuj na kilku wybranych obrazach, które nie były użyte do treningu (np. ze zbioru testowego Open Images).
7. Tak wytrenowanej sieci użyj do cenzurowania jedzenia na obrazach. Weź kilka obrazów na których pojawia sie jedzenie (np. ze zbioru testowego Open Images) i rozmaż (blur) tylko te regiony gdzie pojawia się jakieś jedzenie.
