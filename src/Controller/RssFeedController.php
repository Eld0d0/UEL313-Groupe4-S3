<?php

namespace Watson\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Response;


class RssFeedController {

    /**
     * RSS Feed controller.
     *
     * @param Application $app Silex application
     */
    public function getFeed(Application $app) {
        // On récupère les 15 derniers articles en utilsant la méthode limitedFind de la classe LinkDAO
        $links = $app['dao.link']->limitedFind(1);

        // Utilisation de la la classe Response pour passer le bon header type et ne pas avoir les balises html (inspiré de cet exemple : https://stackoverflow.com/questions/23618962/how-to-set-a-header-and-render-a-twig-template-without-renderview-method-in-sy)
        $response = new Response(
            $response =  $app['twig']->render('rss_feed.html.twig', array('links' => $links))
        );
        $response->headers->set('Content-type', 'text/xml');

        return $response;
    }
}
