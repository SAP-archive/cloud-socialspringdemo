/*
 * Copyright 2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.sap.netweaver.cloud.samples.springsocialdemo.web;

import javax.inject.Inject;

import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.social.twitter.api.impl.TwitterTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TwitterTimelineController
{

	@Inject
	private ConnectionRepository connectionRepository;

	@RequestMapping(value = "/twitter/timeline", method = RequestMethod.GET)
	public String showTimeline(Model model)
	{
		return showTimeline("Home", model);
	}

	@RequestMapping(value = "/twitter/timeline/{timelineType}", method = RequestMethod.GET)
	public String showTimeline(@PathVariable("timelineType") String timelineType, Model model)
	{
		if (timelineType.equals("Home"))
		{
			model.addAttribute("timeline", getTwitter().timelineOperations().getHomeTimeline());
		}
		else if (timelineType.equals("Public"))
		{
			model.addAttribute("timeline", getTwitter().timelineOperations().getPublicTimeline());
		}
		else if (timelineType.equals("User"))
		{
			model.addAttribute("timeline", getTwitter().timelineOperations().getUserTimeline());
		}
		else if (timelineType.equals("Mentions"))
		{
			model.addAttribute("timeline", getTwitter().timelineOperations().getMentions());
		}
		else if (timelineType.equals("Favorites"))
		{
			model.addAttribute("timeline", getTwitter().timelineOperations().getFavorites());
		}
		model.addAttribute("timelineName", timelineType);
		return "twitter/timeline";
	}

	protected Twitter getTwitter()
	{
		Connection<Twitter> twitter = connectionRepository.findPrimaryConnection(Twitter.class);
		return twitter != null ? twitter.getApi() : new TwitterTemplate();
	}

}