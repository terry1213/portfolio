'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "ms-icon-310x310.png": "ac007af77d6c666b459d195aff34cde5",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"index.html": "983eaeba13be15c0c6f8e1b5d7b7dd05",
"/": "983eaeba13be15c0c6f8e1b5d7b7dd05",
"android-icon-36x36.png": "1c2bac6df13b59fb15a297be8f93aba9",
"apple-icon-76x76.png": "b7238db9aa61e9f2a14808671a713716",
"android-icon-144x144.png": "4051a024b4e03bf0cf65fed4160b3d0f",
"apple-icon-60x60.png": "ed45041cf942aca119b8ea766940fd99",
"favicon-32x32.png": "07b1bc1e67f417e5929046820325f497",
"ms-icon-150x150.png": "945dc262614397d10ab920df2b053784",
"favicon-16x16.png": "70d7970caa9eac96aa0c6c198b9f154b",
"apple-icon-180x180.png": "d2be8dd49df7b0c99a1297c4efe5e783",
"apple-icon.png": "c61e26c479b9c4fea81787c1d06b3325",
"android-icon-48x48.png": "0dbc1fb11b5ca6bdced27fd66b14715b",
"ms-icon-70x70.png": "72a18548009adccb450a922a1bad6fff",
"favicon.png": "b01de701b249a4d87a14b2afa229dbf8",
"apple-icon-precomposed.png": "c61e26c479b9c4fea81787c1d06b3325",
"apple-icon-152x152.png": "fcddb01dae1f3379c21e6f47dfb67c3a",
"main.dart.js": "88734b8f76f770e5d4d2b9f75d896de8",
"favicon-96x96.png": "9e12ad4293f943b61e37eec6baa495b2",
"manifest.json": "d91614466ca6678f1e5abcf57c493312",
"version.json": "304c060da638f78d0869eebeb274b3ca",
"android-icon-96x96.png": "9e12ad4293f943b61e37eec6baa495b2",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"favicon.ico": "f0dda2d2538a042f8a44dc793c7722c6",
"ms-icon-144x144.png": "4051a024b4e03bf0cf65fed4160b3d0f",
"apple-icon-57x57.png": "6f3d6e1547fc134ba25693152358fcdd",
"android-icon-72x72.png": "3179f3d9bb1b92e0c8f3ee2c3b00d449",
"android-icon-192x192.png": "0c08b2720b3f5e30da2404f4465a6296",
"apple-icon-72x72.png": "3179f3d9bb1b92e0c8f3ee2c3b00d449",
"assets/FontManifest.json": "7b97e35507e61f276d15e787f3e359fc",
"assets/NOTICES": "a5924ecea9fa8ea912a5dc7f64b0e4f2",
"assets/fonts/NotoSansKR-Black.otf": "aef8424b7c9ece17f01cbc8618e4723b",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/NanumPenScript-Regular.ttf": "6238324b9cfd31534885a47e8b07231e",
"assets/fonts/NotoSansKR-Bold.otf": "b59ac7cf449e57469daf2480fafbddf4",
"assets/fonts/NotoSansKR-Light.otf": "89816c0e22baa4f81a196a1c3b61bf46",
"assets/fonts/NotoSansKR-Regular.otf": "913f146b0200b19b17eb4de8b4427a9c",
"assets/fonts/NotoSansKR-Medium.otf": "de132efeffa48aef0bf5bdfe1c4602f4",
"assets/fonts/NotoSansKR-Thin.otf": "5dac92efb94655ca5331df2505f3428a",
"assets/assets/profile.png": "44ce71e6908a2d708771d30a32bb336a",
"assets/assets/project/ajite3.png": "1011aff0c7099dbed4afe7ff82bdbb2d",
"assets/assets/project/ajite2.png": "8a3ac7134069bba42dac0f71ee8265e3",
"assets/assets/project/ajite4.png": "e2716415046faa01d3128daeee7410f1",
"assets/assets/project/ajite1.png": "80e53055f6082190caa6fd348c056252",
"assets/assets/profile2.jpg": "f1e5502758f852e0252ac68f029362ed",
"assets/assets/blog/decoding_flutter.jpeg": "4320390f43c13f8062817519ee2be3d8",
"assets/assets/blog/state_management.png": "6bcf02acf7b50fc9a61ff176f5b61de1",
"assets/assets/blog/error.png": "f6a609f38a6406e31c35c35c428cccd6",
"assets/assets/blog/flutter_dart.png": "5421a3339e73b27f3330f6616fd56935",
"assets/assets/blog/widget_of_the_week.png": "6328c00a51e73064c5791fe7ee371a2b",
"assets/assets/blog/algorithm.png": "d44a723ed6dc514c75be01e4853dc3a2",
"assets/assets/profile_sidebar.jpg": "f16791ab07530b4a8dcc87a933ecad74",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/line_icons/lib/assets/fonts/LineIcons.ttf": "23621397bc1906a79180a918e98f35b2",
"assets/AssetManifest.json": "7ed86d1b347bcb45fe1762fa51a205a6",
"apple-icon-120x120.png": "0129dded3cbb46c23c7e3ab9f6ff8609",
"loading-profile.jpg": "8e47db8e952a437d21ff8ef1e374d21a",
"apple-icon-144x144.png": "4051a024b4e03bf0cf65fed4160b3d0f",
"apple-icon-114x114.png": "80fd191ee74b07a531f2b5494eb87c21"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
