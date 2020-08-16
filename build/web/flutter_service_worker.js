'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/009%20(1).gif": "724b81d69c9e604933c630584e132c41",
"assets/009.gif": "724b81d69c9e604933c630584e132c41",
"assets/about.html": "08a72ccf84fd1a2813c696cf6c4a68db",
"assets/algorithm.png": "cebd5aafecbf06f90f5c423d5a2f3972",
"assets/AssetManifest.json": "99914b932bd37a50b983c5e7c90ae93b",
"assets/avatar.jpg": "bebd4fa9cbcf6c252b4636773c6f07d5",
"assets/backgroundPhoto.png": "c11bb3d3b1332aa33a5dbab399adddfc",
"assets/best-introduction-to-mobile-app-development-1024x683.jpg": "0dda260e9e363eb9dd2c490905a032ab",
"assets/bg.gif": "8fccb3ce8ef99294836a46d607407738",
"assets/bg2.jpg": "35e46f85de3c4b3859850a322f00eca2",
"assets/bipolar-balls.gif": "17448d4cf0f62ea99a86d398222f874e",
"assets/bk.jpg": "10cb5fd347418d409d06889d988234d1",
"assets/bk2.jpg": "1e33c43e5d63e9e4edf5f98d246a0bab",
"assets/circles.png": "9d6996aa3e00619fb0cabbe2aae05c3b",
"assets/circles.svg": "66f3864ba079f9611cbf16ab86552293",
"assets/collection.gif": "2bbff9af10a744214c0cce7d69a82110",
"assets/data.png": "b9e3c20ea2e2320c9c51488b61e9f38c",
"assets/echo.gif": "433a3fc260d9d888ba5264b7c7290dc5",
"assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/FatherlyDeterminedGoral-mobile.mp4": "57ff67b6d1358b6c8a3b553f27f3d465",
"assets/first.png": "1624ce6893dcbe20e591b6682654723e",
"assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/footer.png": "530bdd1afcfd7347b4f668b444d21ce3",
"assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"assets/graphic-design.png": "cf5e77da6b063de1543a4451d43d762a",
"assets/Group%2016.png": "f3dd4905e95bee62a7396de01cc5a1b6",
"assets/Group.png": "269a9e37b44b9ce16d14e6e673372a7a",
"assets/homeIcon.png": "88329cb3093af0c51d601b14d6c5557e",
"assets/homeIcon.svg": "109713162dd566cc81584aeebe35856c",
"assets/icon.png": "7a7de193072245eb5a001206993031bd",
"assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/la.png": "3f2a09026d6306ae7447e08c41e98890",
"assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/me.png": "ceb6d1995570b553b1968641ecb52890",
"assets/medium.png": "fb86f4060325caef8ea1f0fad0d25f40",
"assets/medium_light.png": "bd516690c99267a778885736015befe8",
"assets/mobile-app.svg": "4ba69538efb2830a8fe502eaf615f6cc",
"assets/moon.png": "a270b8a10d1a9a52441bf5a322dd1b86",
"assets/NOTICES": "91b3c669dedfd8f0fc7ed5d5e703759f",
"assets/programming.png": "7cb8fcd768c7538bd9c9efd457a0df18",
"assets/service-mobile-development.jpg": "f328c09930b95aeb72004896b56e1d28",
"assets/smartphone.png": "e9590e6059da0bfe6664754d092afcfc",
"assets/sp2.gif": "8abb63694699f1bb1a572219491ab8ca",
"assets/sp3.gif": "cb9283603595993c873548ad0c26614b",
"assets/sp4.gif": "9f533bcba0e75e7040f73c5f7644d65e",
"assets/splash.gif": "44376c9344713a6e0655e83bd73fa15b",
"assets/tenor.gif": "dba830fa94563212ac50c094caf22017",
"assets/twitter.png": "8f35a40403a84631c4125c4f1859c7a6",
"assets/web-development.png": "612fc06bf7037150d2a4912dc91ca967",
"favicon.png": "432ec31bab542172a877461c51eae5e2",
"icons/Icon-192.png": "269a9e37b44b9ce16d14e6e673372a7a",
"icons/Icon-512.png": "269a9e37b44b9ce16d14e6e673372a7a",
"index.html": "52986c220e799cb4fe098aae0f701599",
"/": "52986c220e799cb4fe098aae0f701599",
"main.dart.js": "f595f2601c18dd3433577cdded68b76e",
"manifest.json": "5a2c0526f1fe73e6f211bc7a9d15c210"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
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
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
