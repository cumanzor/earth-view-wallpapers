//
//  ImageServiceProtocol.swift
//  EarthWallpapers
//
//  Created by Alessandro Maroso on 03/02/16.
//  Copyright © 2016 membersheep. All rights reserved.
//

import Foundation

enum ImageServiceError: ErrorType {
    case GenericError
    case ImageDownloadError(description: String)
    case ParserError
    case HTMLDownloadError(description: String)
    case EmptyResponseError
}

protocol ImageDownloadService {
    func getImage(completionHandler: Result<NSURL, ImageServiceError> -> Void);
}